class AnswerMarket < ApplicationRecord
  belongs_to :category_market , optional: true
end
