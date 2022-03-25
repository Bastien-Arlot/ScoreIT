class StartupsController < ApplicationController
  before_action :authenticate_user

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

def show 

  @startup = Startup.find(current_user.id) 
  @scores = Score.all
end



  def update
  end
  
private

def authenticate_user
  unless current_user
    flash[:danger] = "Please log in."
    redirect_to new_user_session_path
  end
end

end
