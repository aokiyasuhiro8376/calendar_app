class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_form 'chat_channel'
  end

  def unsubscribed
  end

  def post(data)
    ActionCable.server.broadcast('chat_channel', data)
  end
end



# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak
  end
end