class Api::V1::ItemsController < ApplicationController
  skip_before_action :authorized, only: [:index]

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
    # 2 check params and if the data is correct
    # 3 update w those params
    item.update(status: params[:status], borrower_id: params[:borrower_id])
    # 4 rails console check that the row has been successfully updated
    render json: item
  end


  #
  # def destroy
  # end
end
