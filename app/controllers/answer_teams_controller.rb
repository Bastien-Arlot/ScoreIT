class AnswerTeamsController < ApplicationController

  def new
    @answer_team = AnswerTeam.new
  end

  def create
    @answer_team = AnswerTeam.new(answer_team_params)
    if @answer_team.save
      redirect_to startup_score_path(params[:startup_id], params[:score_id])
    else
      render 'new'
    end

  end

  private

  def answer_team_params
    params.permit(:answer_team_1, :answer_team_2, :answer_team_3, :answer_team_4, :answer_team_5, :answer_team_6, :answer_team_7, :answer_team_8, :answer_team_9, :answer_team_10, :category_team_id)
  end

end
