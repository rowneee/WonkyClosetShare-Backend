class Api::V1::ItemsController < ApplicationController
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
  # def update
  # end
  #
  # def destroy
  # end
end
