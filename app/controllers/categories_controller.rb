class CategoriesController < ApplicationController
  layout 'sidebar'
  def index
    @categories = Category.page(params[:page])
  end

  def show
    @category = Category.find(params[:id])
    redirect_to @category.pages.first if @category.pages.count == 1
    @posts = @category.posts.recent.page(params[:page])
  end
end

