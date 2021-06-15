class PostsController < ApplicationController

  def index
    @posts = Post.o
    rder(id: "DESC")
  end

  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index  # 追記する
  end
  
end
