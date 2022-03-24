class CategoryInnovation < ApplicationRecord
  belongs_to :score
  has_one :answer_market, dependent: :destroy

end
