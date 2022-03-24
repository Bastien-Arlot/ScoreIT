class AnswerTeam < ApplicationRecord
  belongs_to :category_team , optional: true
end
