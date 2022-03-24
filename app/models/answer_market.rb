class AnswerMarket < ApplicationRecord
  belongs_to :category_market

  validates :answer_market_1, presence: true
  validates :answer_market_2, presence: true
  validates :answer_market_3, presence: true
  validates :answer_market_4, presence: true
  validates :answer_market_5, presence: true
  validates :answer_market_6, presence: true
  validates :answer_market_7, presence: true
  validates :answer_market_8, presence: true

end
