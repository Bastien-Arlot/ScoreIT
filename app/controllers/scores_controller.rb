class ScoresController < ApplicationController

  def index
    @scores = Score.all
  end

  def new
    @score = Score.new

  end

  def create

    @score = Score.new(
      'startup_id' => current_user.startup.id
    )
    if @score.save
      @startup = current_user.startup
      @startup.update(havecredit: false)
      redirect_to startup_score_path(current_user.startup.id, @score.id)
    else
      select_score()
      flash[:notice] = "Acheter un pass notation depuis votre dashboard pour vous faire noter"

      flash[:alert] = "Vous devez attendre #{(@score_completed.last.name.to_date + 90 - Date.today).to_i} jours avant de vous faire noter à nouveau"
      redirect_to startup_path(current_user.startup.id)
    end
  end

  def show

    @score = Score.find (params[:id])
    @startup = @score.startup
    respond_to do |format|
      format.html
      format.pdf do

        render pdf: "Certificat notation pour #{@startup.name} du #{@score.name} ", template: "startups/certificate.html.erb"

      end
    end
  end

  def update
  end

  private

  def select_score

    @score_completed = []
    @scores = Score.all
    @scores.each do |element|
      if element.startup_id == current_user.startup.id && !element.name.nil?
        @score_completed << element
      end
    end

  end

end
