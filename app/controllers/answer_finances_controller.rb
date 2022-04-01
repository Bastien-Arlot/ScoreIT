class AnswerFinancesController < ApplicationController

  def new
    @answer_finance = AnswerFinance.new
  end

  def create
    @answer_finance = AnswerFinance.new(answer_finance_params)
    if @answer_finance.save
      redirect_to startup_score_path(params[:startup_id], params[:score_id])
    else
      render 'new'
    end

  end

  private

  def answer_finance_params
    params.permit(:answer_finance_1, :answer_finance_2, :answer_finance_3, :answer_finance_4, :answer_finance_5, :answer_finance_6, :category_finance_id)
  end

end
