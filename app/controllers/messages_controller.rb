class MessagesController < ApplicationController

  def welcome
    
  end

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    @message.save
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
    @message = Message.find(params[:id])

  end

  def destroy
  end

  private

  def message_params
    params[:message].permit(:body, :type, :transcribed_at, :locale_id)
  end


  # def get_new_messages
  #   @messages = Message.where
  # end
  
end
