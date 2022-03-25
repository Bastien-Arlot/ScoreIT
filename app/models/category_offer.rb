class CategoryOffer < ApplicationRecord
  belongs_to :score
  has_one :answer_offer, dependent: :destroy

  after_update :scoring_total

end
