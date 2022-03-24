class AnswerMarketController < ApplicationController

  def new
    @answer_market = AnswerMarket.new
  end

  def create
    @answer_market = AnswerMarket.new(answer_market_params)
    if  @answer_market.save
      redirect_to root_path
    else
      puts @answer_market.errors.full_messages
      render 'new'
    end

  end

  private



  def answer_market_params
    params.permit(:answer_market_1, :answer_market_2, :answer_market_3, :answer_market_4, :answer_market_5, :answer_market_6, :answer_market_7, :answer_market_8, :category_market_id)
  end

end
