class UserTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token

  def create
    sign_in

    ActionCable.server.broadcast('session', { user: { id: auth_token.payload[:sub].to_s }, token: auth_token.token })

    render json: { token: auth_token.token, payload: auth_token.payload }, status: :created
  end

  private

  def sign_in
    expiration = 1.weeks.from_now

    response.set_cookie(
      :'auth._token.local',
      UserTokenRepresenter.decorate(auth_token.token, expiration)
    )

    user = User.find(auth_token.payload[:sub])
    user.update({ token: auth_token.token })
  end

  def authenticate
    unless entity.present? && entity.authenticate(auth_params[:password])
      render json: {}, status: 404
    end
  end
end
