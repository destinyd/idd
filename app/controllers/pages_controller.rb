class PagesController < ApplicationController
  def show
    #@page = Page.where(path: params[:path]).first
    @page = Page.find(params[:id])
    Page.update_counters @page.id, visits: 1
  end
end
