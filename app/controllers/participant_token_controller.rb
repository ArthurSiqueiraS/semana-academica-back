class ParticipantTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token

  def create
    sign_in

    render json: { token: auth_token.token, payload: auth_token.payload }, status: :created
  end

  private

  def sign_in
    expiration = 1.weeks.from_now

    response.set_cookie(
      :'auth._token.local',
      ParticipantTokenRepresenter.decorate(auth_token.token, expiration)
    )

    user = Participant.find(auth_token.payload[:sub])
    user.update({ token: auth_token.token })
  end
end
