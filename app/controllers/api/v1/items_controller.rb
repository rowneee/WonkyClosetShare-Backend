class Api::V1::ItemsController < ApplicationController
  # skip_before_action :authorized, only: [:index]

  def index
    items = Item.all
    render json: items
  end

  def show
    item = Item.find(params[:id])
    render json: item
  end

  # def create
  # end
  #
  def update
    current_user = User.find(params[:id])
    current_user.update(borrower_id: current_user.id)
    render json: user
  end
  #
  # def destroy
  # end
end
