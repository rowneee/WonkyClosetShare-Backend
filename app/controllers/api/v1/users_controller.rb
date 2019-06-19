class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:sign_up,:new,:create]
  # before_action :find_user, only: [:show,:edit,:update,:destroy]

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: user
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
    # byebug
    # render json with those items
    render json: filtered_user_items
    # get all items that belong to the user
  end

  # def update
  #   @user.update(user_params)
  #   redirect_to users_path
  # end

private

  def user_params
    params.require(:user).permit(:name,:password,:gender,:username)
  end

end
