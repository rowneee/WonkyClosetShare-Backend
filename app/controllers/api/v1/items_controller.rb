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

  def create
    item = Item.create(owner_id: params[:owner_id], borrower_id: nil, brand: params[:brand], color: params[:color], size: params[:size], description: params[:description], category: params[:category], img_url: params[:img_url], status: params[:status])
    render json: item
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    render json: item
  end

  private

  def item_params
    params.permit(:status, :borrower_id)
  end
end
