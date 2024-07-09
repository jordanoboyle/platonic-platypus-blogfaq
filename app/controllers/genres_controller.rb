class GenresController < ApplicationController

  def index
    @genres = Genre.all
    
  end

  def show
    render json: {message: "hello there"}
  end

  def create
    render json: {message: "hello there"}
  end
end
