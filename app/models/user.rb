class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :firstname, presence:true, format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
  validates :lastname, presence:true, format: {with: /\A[a-zA-Z0-9 _\.]*\z/}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :startup, dependent: :destroy        

end
