class SessionsController < ApplicationController
  def user
    return render json: nil unless current_user

    render json: SessionsRepresenter.decorate(current_user)
  end
end