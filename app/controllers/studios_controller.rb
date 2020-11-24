class StudiosController < ApplicationController
  def index
    @studios = Studio.all
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
