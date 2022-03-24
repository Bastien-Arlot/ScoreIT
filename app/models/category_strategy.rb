class CategoryStrategy < ApplicationRecord
  belongs_to :score
  has_one :answer_strategy, dependent: :destroy

end
