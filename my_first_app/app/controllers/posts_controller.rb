class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end

  private
  def post_params
    params.permit(:content)
  end
end
