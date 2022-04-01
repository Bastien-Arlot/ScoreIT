class CategoryOffer < ApplicationRecord
  belongs_to :score
  has_one :answer_offer, dependent: :destroy

  validates :score_id, uniqueness: true

  after_update :scoring_total

end
