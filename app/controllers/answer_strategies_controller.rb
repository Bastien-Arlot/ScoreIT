class AnswerStrategiesController < ApplicationController

  def new
    @answer_strategy = AnswerStrategy.new
  end

  def create
    @answer_strategy = AnswerStrategy.new(answer_strategy_params)
    if @answer_strategy.save
      redirect_to startup_score_path(params[:startup_id], params[:score_id])
    else
      render 'new'
    end

  end

  private

  def answer_strategy_params
    params.permit(:answer_strategy_1, :answer_strategy_2, :answer_strategy_3, :answer_strategy_4, :answer_strategy_5, :answer_strategy_6, :answer_strategy_7, :answer_strategy_8, :answer_strategy_9, :answer_strategy_10, :answer_strategy_11, :category_strategy_id)
  end

end
