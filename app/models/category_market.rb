class CategoryMarket < ApplicationRecord
  belongs_to :score
  has_one :answer_market, dependent: :destroy

  validates :score_id, uniqueness: true

  after_update :scoring_total

end
