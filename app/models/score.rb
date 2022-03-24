class Score < ApplicationRecord
  belongs_to :startup
  
  has_one :category_team, dependent: :destroy
  has_one :answer_team, through: :category_team
  
  has_one :category_finance, dependent: :destroy



end
