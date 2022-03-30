class ScoresController < ApplicationController

  def index
  end

  def new
    @score = Score.new
  end

  def create

    @score = Score.new(
      'startup_id' => current_user.startup.id
    )
    if @score.save
      redirect_to startup_path(current_user.startup.id)
    else
      flash[:score_delay] = "Error, not enough delay. The delay should be 90 days."
      render 'new'
    end
  end

  def show

    @score = Score.find (params[:id])
    @startup = @score.startup
  end

  def update
  end

end
