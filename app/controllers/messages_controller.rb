class MessagesController < ApplicationController

  def index
  end

  def new
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
    
  end

  def destroy
  end
end
