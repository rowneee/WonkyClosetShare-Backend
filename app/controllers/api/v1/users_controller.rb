class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:sign_up,:new,:create]
  # before_action :find_user, only: [:show,:edit,:update,:destroy]

  def index
    users = User.all
    render json: users
    # current_user_likes = current_user.liked_users
    # @users = User.all.select do |user|
    #   user.id != current_user.id && !current_user_likes.include?(user)
    # end
    # @rando = @users.sample
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)
    # if @user.valid?
      # redirect_to users_path
    render json: user
    # else
    #   # redirect_to sign_up_path
    #   render json:
    # end
  end

  def show_pending_items
    # byebug
    # user/current_user.id/pending
    # get all items associated wit hthat user
    # user = User.find(params[:id])
    # owner_id = params[:id]
    user_items = Item.where(owner_id: params[:id])
    # filter by status pending
    filtered_user_items = user_items.select {|item| item.status == "Pending"}
    byebug
    # render json with those items
    render json: filtered_user_items
    # get all items that belong to the user
  end
  #
  #
  #
  # def sign_up
  #   @user = User.new
  # end
  #
  # def edit
  # end
  #
  # def update
  #   @user.update(user_params)
  #   redirect_to users_path
  # end
  #
  # def destroy
  #   @user.destroy
  #   redirect_to root_path
  # end

private
  # def find_user
  #   @user = User.find(params[:id])
  # end

  def user_params
    params.require(:user).permit(:name,:password,:gender,:username)
  end

end
