class ComicsController < ApplicationController
  before_filter :find_comic, only: [:show, :edit, :update, :destroy]

  def index
    @comics = Comic.all
  end

  # show first page of specific comic
  def show
    redirect_to comic_panel_url(@comic, 1)
  end

  private

  def find_comic
    @comic = Comic.find(params[:id])
  end
end
