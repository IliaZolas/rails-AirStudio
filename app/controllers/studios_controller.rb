class StudiosController < ApplicationController
  def index
    @studio = Studio.all
  end

  def new
    @studio = Studio.new
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
