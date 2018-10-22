class Api::MessagesController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def create
  	#byebug
    render json: Message.create(content: params[:content], from_id: params[:from_id], to_id: params[:to_id])     
    #render json: {status: 'ok'}
  end

end