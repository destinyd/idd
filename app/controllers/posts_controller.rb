class PostsController < ApplicationController
  layout 'sidebar'
  def index
    @posts = Post.page(params[:page])
  end

  def show
    @post = Post.find(params[:id])
    add_crumb(@post.category, category_path(@post.category)) if @post.category
    add_crumb @post.to_s
  end
end
