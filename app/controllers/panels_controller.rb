class PanelsController < ApplicationController
  before_filter :find_panel, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def find_panel
    @comic = Comic.find(params[:comic_id])
    @panels = @comic.panels.order('id ASC').page(params[:page]).per(1)
    @panel = @panels.first
  end
end
