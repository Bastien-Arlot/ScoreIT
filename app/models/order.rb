class Order < ApplicationRecord
  belongs_to :startup

  after_create :send_score

  def send_score
    score_completed(self)
    @score = @score_completed.last
    UserMailer.score_email(@score).deliver_now  
  end

  def score_completed(score)
    @scores = Score.all
    @score_completed = []
    @scores.each do |element|
      if element.startup_id == score.startup_id && !element.name.nil?
        @score_completed << element
      end
    end
  end
end
