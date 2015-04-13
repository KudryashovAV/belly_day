class PostsController < ApplicationController

  def show
    @post = Post.order("RANDOM()"). first
  end

  private

  def account_params
    params.require(:post).permit(:title, :body, :published)
  end
end
