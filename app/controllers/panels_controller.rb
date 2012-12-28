class PanelsController < ApplicationController
  before_filter :find_panel, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def find_panel
    @panel = Panel.find(params[:id])
    @comic = @panel.comic
  end
end
