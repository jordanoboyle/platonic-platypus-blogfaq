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
    @genre = Genre.create(
      name: "Test Genre Name",
      description: "This is a test description",
      example: "Mario Clone"
    )
  end
end
