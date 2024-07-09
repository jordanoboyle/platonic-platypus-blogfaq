class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render template: "genres/index"
  end

  def show
    @genre = Genre.find_by(id: params[:id])
    render template: "genres/show"
  end

  def create
    render json: {message: "hello there"}
  end
end
