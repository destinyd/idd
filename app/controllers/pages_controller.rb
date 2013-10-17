class PagesController < ApplicationController
  def show
    #@page = Page.where(path: params[:path]).first
    @page = Page.find(params[:id])
  end
end
