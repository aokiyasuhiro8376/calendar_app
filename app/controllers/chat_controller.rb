class ChatController < ApplicationController
  def show
    @chats = Chat.all
  end

  def create
    @chat = Chat.new(chat.params[:message])
    @chat.save
  end
end
