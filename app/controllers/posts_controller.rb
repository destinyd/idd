class PostsController < ApplicationController
  layout 'sidebar'
  def index
    @posts = Post.page(params[:page])
  end

  def show
    @post = Post.find(params[:id])
    Page.update_counters @post.id, visits: 1
    add_crumb(@post.category, category_path(@post.category)) if @post.category
    add_crumb @post.title.try(:block, 20)
  end
end
