class Startup < ApplicationRecord
  belongs_to :user
  has_many :scores, dependent: :destroy
end
