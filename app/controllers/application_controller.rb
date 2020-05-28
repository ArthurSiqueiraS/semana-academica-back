class ApplicationController < ActionController::API
  include Knock::Authenticable
  before_action :authenticate_user
  attr_accessor :current_user

  def authenticate_user
    auth = request.headers['Authorization'] || request.cookies['auth._token.local']
    return unauthorized unless auth.present?

    token = auth.split.last

    begin
      self.current_user = User.find_by(token: token)
    rescue Mongoid::Errors::DocumentNotFound
      return unauthorized
    end
  end

  def unauthorized
    render json: { error: 'Não autorizado' }, status: :unauthorized
  end
end
