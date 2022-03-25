class CategoryInnovation < ApplicationRecord
  belongs_to :score
  has_one :answer_innovation, dependent: :destroy

  validates :score_id, uniqueness: true

  after_update :scoring_total

end
