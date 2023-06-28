class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def create
    @series = Serie.new(series_params)

    if @series.save
      redirect_to series_path
    else
      render :new
    end
  end

  def new
    @series = Serie.new
  end

  private

  def series_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
