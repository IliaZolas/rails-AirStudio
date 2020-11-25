class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @studios = Studio.all
    @markers = @studios.geocoded.map do |studio|
      {
        lat: studio.latitude,
        lng: studio.longitude
      }
    end
  end

  def new
    @studio = Studio.new
  end

  def show
    @studio = Studio.find(params[:id])
  end

  def create
    @studio = Studio.new(params[:studio])
    if @studio.save
      redirect_to studios_index_path
    else
      render 'new'
    end
  end
end
