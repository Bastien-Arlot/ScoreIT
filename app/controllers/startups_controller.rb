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

  @startup = Startup.find_by(user_id:current_user.id)
  @scores = Score.all
  @score_last = @startup.scores.last
  select_score()

  respond_to do |format|
    format.html { }
    format.js { }
  end

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


def select_score

  @score_completed = []
    @scores.each do |element|
      if element.startup_id == @startup.id && !element.name.nil?
        @score_completed << element 
      end
    end

  if params[:select].nil?
    if @score_completed.nil?
      params[:select] = @score_completed.last.id
    end
    @score = @score_completed.last
  else
    @score = Score.find(params[:select])
  end

  

end

end
