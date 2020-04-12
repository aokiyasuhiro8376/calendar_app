class ChatController < ApplicationController
  def create
    @chats = Chat.new(chat.params[:message])
    @chats.save
  end

  def show
    @chats = Chat.all
  end
end
