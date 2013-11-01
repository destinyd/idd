class VideosController < ApplicationController
  def index
    @videos = Video.recent.page(params[:page]).per(9)
  end

  def show
    @video = Video.find(params[:id])
    Page.update_counters @video.id, visits: 1
    add_crumb(@video.category, category_path(@video.category)) if @video.category
    add_crumb @video.to_s
  end
end
