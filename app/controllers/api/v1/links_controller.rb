class Api::V1::LinksController < ApplicationController

  def index
    links = Link.all
    render json: links
  end

  def create
    link = Link.new(owner_id: params[:owner_id], borrower_id: params[:borrower_id])
    render json: links
  end
  #
  # def update
  # end
  #
  # def destroy
  # end
end
