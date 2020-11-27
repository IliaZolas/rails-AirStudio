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
    @studio = Studio.new(studio_params)
    @studio.user = current_user
    if @studio.save
      redirect_to studio_path(@studio)
    else
      render 'new'
    end
  end

  def studio_manager
    # binding.pry
    @studios = Studio.where(user: current_user)
  end

  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy
    redirect_to my_studios_path
  end

  private

  def studio_params
    params.require(:studio).permit(:title, :address, :description, :price, :user_id, :photo)
  end
end
