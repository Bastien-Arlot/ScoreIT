class CategoryStrategy < ApplicationRecord
  belongs_to :score
  has_one :answer_strategy, dependent: :destroy

  validates :score_id, uniqueness: true

  after_update :scoring_total

end
