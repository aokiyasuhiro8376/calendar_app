class ChatController < ApplicationController
  def show
    @chats = Chat.all
  end

  def create
    @chats = Chat.new(chat.params[:message])
    @chats.save
  end
end
