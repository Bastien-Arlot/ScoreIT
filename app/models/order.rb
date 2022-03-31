class Order < ApplicationRecord

  after_create :send_score

  def send_score
    score_completed(self)
    @score = Score.find_by(id: @score_completed.last.id)
    score = @score
  # UserMailer.score_email(score).deliver_now
  end

  def score_completed(score)
    @scores = Score.all
    @score_completed = []
      @scores.each do |element|
        if element.startup_id.to_s == score.startup_id && !element.name.nil?
          puts element.name
          @score_completed << element
        end
      end
  end

end
