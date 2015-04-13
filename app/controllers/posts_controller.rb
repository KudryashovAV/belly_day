class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  private

  def account_params
    params.require(:post).permit(:title, :body, :published)
  end
end
