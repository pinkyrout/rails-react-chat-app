class Api::UsersController < ApplicationController
  protect_from_forgery with: :null_session
  
  def index
    render json: User.all.as_json(only: [:id, :name])
  end

  def create
    user = User.find_by(name: params[:name])
    render json: user.nil? ? User.create(name: params[:name]) : user
  end

  def load_messages
  	#byebug
    user = User.find(params[:user_id])
    render json: user.get_messages(params[:from_user_id])
  end

end