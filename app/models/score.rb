class Score < ApplicationRecord
  belongs_to :startup

  has_one :category_finance, dependent: :destroy
end
