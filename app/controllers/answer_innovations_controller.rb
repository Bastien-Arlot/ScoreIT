class AnswerInnovationsController < ApplicationController
  def new
    @answer_innovation = AnswerInnovation.new
  end

  def create
    @answer_innovation = AnswerInnovation.new(answer_innovation_params)
    if @answer_innovation.save
      redirect_to startup_score_path(params[:startup_id], params[:score_id])
    else
      render 'new'
    end

  end

  private

  def answer_innovation_params
    params.permit(:answer_innovation_1, :answer_innovation_2, :answer_innovation_3, :answer_innovation_4, :answer_innovation_5, :answer_innovation_6, :answer_innovation_7, :category_innovation_id)
  end
end
