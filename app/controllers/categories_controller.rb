class CategoriesController < ApplicationController
  def index
    @categories = Category.page(params[:page])
  end

  def show
    @category = Category.find(params[:id])
    redirect_to @category.pages.first if @category.pages.count == 1
    @posts = @category.posts
  end
end

