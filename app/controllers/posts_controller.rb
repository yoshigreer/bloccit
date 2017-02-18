class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts[0].title = "spam"
    @posts.each do |post|
      post.title = "spam" if (post.id % 5) == 0
    end
  end

  def show
  end

  def new
  end

  def edit
  end

end
