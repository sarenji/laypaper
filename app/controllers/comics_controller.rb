class ComicsController < ApplicationController
  before_filter :find_comic, only: [:show, :edit, :update, :destroy]

  def index
    @comics = Comic.all
  end

  # show archive page of specific comic
  def show
  end

  private

  def find_comic
    @comic = Comic.find(params[:id])
  end
end
