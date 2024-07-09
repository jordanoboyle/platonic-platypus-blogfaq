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
    @genre = Genre.new(
      name: params[:name],
      description: params[:description],
      example: params[:example]
    )
    if @genre.save
      render template: "genres/show"
    else
      render json: { ERRORS: @genre.errors.fullmessages } 
    end
  end
end
