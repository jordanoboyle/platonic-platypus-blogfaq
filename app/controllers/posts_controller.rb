class PostsController < ApplicationController

  def index
    render json: {message: "Hello there"}
  end

  def show
    render json: {message: "Hello there"}
  end

  def create
    @post = Post.new()
    @post.title = "This is my Inagaural Post"
    @post.save
  end

  def update
    render json: {message: "Hello there"}
  end

  def destroy
    render json: {message: "Hello there"}
  end
end
