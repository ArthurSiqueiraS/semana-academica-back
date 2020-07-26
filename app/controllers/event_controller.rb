class EventController < ApplicationController
  skip_before_action :authenticate_user, only: [:online]

  def online
    render json: { online: Event.first.online }, status: 200
  end

  def update
    Event.first.update(online: params[:online])

    render status: 200
  end
end