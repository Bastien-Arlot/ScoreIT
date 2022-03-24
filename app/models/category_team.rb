class CategoryTeam < ApplicationRecord
  belongs_to :score
  has_one :answer_team, dependent: :destroy
end
