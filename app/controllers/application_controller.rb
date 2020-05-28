class ApplicationController < ActionController::API
  include Knock::Authenticable
  before_action :authenticate_participant
  attr_accessor :current_participant

  def authenticate_participant
    token = request.headers['Authorization'].split.last
    return unauthorized unless token.present?

    begin
      self.current_participant = Participant.find_by(token: token)
    rescue Mongoid::Errors::DocumentNotFound
      return unauthorized
    end
  end

  def unauthorized
    render json: { error: 'Não autorizado' }, status: :unauthorized
  end
end
