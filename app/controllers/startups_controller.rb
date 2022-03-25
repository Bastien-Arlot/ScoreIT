class StartupsController < ApplicationController
  def index
  end

  def new
    @startup = Startup.new
  end

  def create
    @startup = Startup.new(
      'name' => params[:name],
      'description' => params[:description],
      'user_id' => current_user.id
    )
    
    if @startup.save
      redirect_to root_path
    else
      flash[:notice] = "Error, fail to save."
      render 'new'
    end
  end

  def update
  end
  
end
