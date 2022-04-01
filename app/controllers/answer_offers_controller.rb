class AnswerOffersController < ApplicationController
  def new
    @answer_offer = AnswerOffer.new
  end

  def create
    @answer_offer = AnswerOffer.new(answer_offer_params)
    if @answer_offer.save
      redirect_to startup_score_path(params[:startup_id], params[:score_id])
    else
      render 'new'
    end

  end

  private

  def answer_offer_params
    params.permit(:answer_offer_1, :answer_offer_2, :answer_offer_3, :answer_offer_4, :answer_offer_5, :answer_offer_6, :answer_offer_7, :answer_offer_8, :category_offer_id)
  end
end
