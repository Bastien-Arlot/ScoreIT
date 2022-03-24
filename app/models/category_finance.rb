class CategoryFinance < ApplicationRecord
  belongs_to :score
  has_one :answer_finance, dependent: :destroy
end
