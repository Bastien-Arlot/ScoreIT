class StartupsController < ApplicationController
  def index
  end

  def new
    @startup = Startup.new
  end

  def create
    @startup = Startup.new(startup_params)
    if @startup.save
      redirect_to root_path
    else
      flash[:notice] = "Error, fail to save."
      render 'new'
    end
  end

  def update
  end

  private

  def startup_params
    params.require(:startup).permit(:user_id, :name, :description)
  end
end
