class Startup < ApplicationRecord
  belongs_to :user
  has_many :scores, dependent: :destroy

  validates :user_id, uniqueness: true

  after_create :do_score
  after_create :startup_registration_mail

  def do_score
    @score = Score.new(
      'startup_id' => self.id
    )
    @score.save
  end

  def startup_registration_mail
    UserMailer.new_startup_email(self).deliver_now
  end

end
