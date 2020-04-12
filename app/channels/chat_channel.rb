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
