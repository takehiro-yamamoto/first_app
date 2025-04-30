class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new # newアクションを定義した
  end

  def create # createアクションを定義した
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
