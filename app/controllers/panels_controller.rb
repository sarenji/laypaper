class PanelsController < ApplicationController
  before_filter :find_panel, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def find_panel
    @panels = Panel.order('id ASC').page(params[:page]).per(1)
    @panel = @panels.first
    @comic = @panel.comic
  end
end
