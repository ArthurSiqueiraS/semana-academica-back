class SessionChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'session'
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def update_event
    ActionCable.server.broadcast('session', 'update_event')
  end
end
