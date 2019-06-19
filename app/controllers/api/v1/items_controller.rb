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

  def update
    item = Item.find(params[:id])
    item.update(status: params[:status], borrower_id: params[:borrower_id])
    render json: item
  end

end
