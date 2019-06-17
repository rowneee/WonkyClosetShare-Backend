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
    # 1
    item = Item.find(params[:id])
    byebug
    # 2 check params and if the data is correct
    # 3 update w those params
    # 4 rails console check that the row has been successfully updated
    # 5 move on
    # current_user = User.find(params[:id])
    # current_user.update(borrower_id: current_user.id)
    render json: item
  end
  #
  # def destroy
  # end
end
