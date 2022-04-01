class StartupsController < ApplicationController
  before_action :authenticate_user
  before_action :have_startup, only: [:new, :create]

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
      render 'new'
    end
  end

  def show

    @startup = Startup.find_by(user_id: current_user.id)
    @scores = Score.all
    @score_last = @startup.scores.last
    @all_my_rate = @scores.where(startup_id: current_user.startup.id)
    select_score()

    @myscore = @scores.where(startup_id: current_user.startup.id, isbuy: true)

    respond_to do |format|
      format.html {}
      format.js {}

      format.pdf do

        render pdf: "Certificat notation pour #{@startup.name} du #{@score.name} ", template: "startups/certificate.html.erb"

      end
    end
  end

  def update
  end

  def destroy
    @startup = Startup.find_by(user_id: current_user.id).destroy()
    redirect_to root_path
  end

  private

  def authenticate_user
    unless current_user
      flash[:alert] = "Merci de vous connecter"
      redirect_to new_user_session_path
    end
  end

  def have_startup
    unless current_user.startup.nil?
      flash[:alert] = "Vous ne pouvez pas créer une seconde startup sur votre compte"
      redirect_to root_path
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
      params[:select] = @score_completed.last.id
      @score = @score_completed.last
    else
      @score = Score.find(params[:select])
    end

  end

end
