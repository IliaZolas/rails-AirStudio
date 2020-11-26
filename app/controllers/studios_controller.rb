class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @studios = Studio.all
    @markers = @studios.geocoded.map do |studio|
      {
        lat: studio.latitude,
        lng: studio.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { studio: studio })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def new
    @studio = Studio.new
  end

  def show
    @studio = Studio.find(params[:id])
    @marker =
      [{
        lat: @studio.latitude,
        lng: @studio.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { studio: @studio })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }]
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
