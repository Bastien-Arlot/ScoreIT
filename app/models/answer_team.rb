class AnswerTeam < ApplicationRecord
  belongs_to :category_team

  validates :category_team_id, uniqueness: true, presence: true

  validates :answer_team_1, presence: true
  validates :answer_team_2, presence: true
  validates :answer_team_3, presence: true
  validates :answer_team_4, presence: true
  validates :answer_team_5, presence: true
  validates :answer_team_6, presence: true
  validates :answer_team_7, presence: true
  validates :answer_team_8, presence: true
  validates :answer_team_9, presence: true
  validates :answer_team_10, presence: true

  after_create :scoring_team

  def scoring_team
    @total = 0

    case self.answer_team_1

    when 0..40
      @total = @total + 0
    when 41..70
      @total = @total + 1
    when 71..100
      @total = @total + 2
    end

    case self.answer_team_2

    when 0..40
      @total = @total + 0
    when 41..70
      @total = @total + 1
    when 71..100
      @total = @total + 2
    end

    case self.answer_team_3

    when 0..40
      @total = @total + 0
    when 41..70
      @total = @total + 1
    when 71..100
      @total = @total + 2
    end

    case self.answer_team_4

    when 0..40
      @total = @total + 0
    when 41..70
      @total = @total + 1
    when 71..100
      @total = @total + 2
    end

    case self.answer_team_5

    when 1
      @total = @total + 2
    when 2
      @total = @total + 0
    end

    case self.answer_team_6

    when 1
      @total = @total + 0
    when 2
      @total = @total + 1
    when 3
      @total = @total - 1
    end

    case self.answer_team_7

    when 1
      @total = @total + 0
    when 2
      @total = @total + 0
    when 3
      @total = @total + 1
    end

    case self.answer_team_8

    when 1..2
      @total = @total + 0
    when 3
      @total = @total - 1
    end

    case self.answer_team_9

    when 1
      @total = @total - 1
    when 2
      @total = @total + 0
    end

    case self.answer_team_10

    when 1
      @total = @total + 0
    when 2..5
      @total = @total - 1
    end

    @total_max = 12

    if @total < 0
      @total = 0
    end

    @total_100 = (@total.to_i * 100) / @total_max.to_i

    @category = CategoryTeam.find(self.category_team_id)

    @category.update(total_rate_team:@total, max_rate_team:@total_max, total_100_team:@total_100.floor)


  end
end
