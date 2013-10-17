class PostsController < ApplicationController
  layout 'post', only: 'show'
  def index
    @posts = Post.page(params[:page])
  end

  def show
    @post = Post.find(params[:id])
  end
end
