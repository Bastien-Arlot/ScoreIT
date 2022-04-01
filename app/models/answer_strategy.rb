class AnswerStrategy < ApplicationRecord
  belongs_to :category_strategy

  validates :answer_strategy_1, presence: true
  validates :answer_strategy_2, presence: true
  validates :answer_strategy_3, presence: true
  validates :answer_strategy_4, presence: true
  validates :answer_strategy_5, presence: true
  validates :answer_strategy_6, presence: true
  validates :answer_strategy_7, presence: true
  validates :answer_strategy_8, presence: true
  validates :answer_strategy_9, presence: true
  validates :answer_strategy_10, presence: true
  validates :answer_strategy_11, presence: true

  validates :category_strategy_id, uniqueness: true, presence: true

  after_create :scoring_strategy

  def scoring_strategy

    @total = 0

    case self.answer_strategy_1
    when 1
      @total = @total + 2
    when 2..5
      @total = @total + 1
    else
      @total = @total
    end

    if self.answer_strategy_2 == 1
      @total = @total + 1
    end

    if self.answer_strategy_3 == 1
      @total = @total + 1
    end

    if self.answer_strategy_4 == 1
      @total = @total - 1
    end

    if self.answer_strategy_5 == 1
      @total = @total + 1
    end

    case self.answer_strategy_6
    when 1
      @total = @total
    when 2..3
      @total = @total + 1
    else
      @total = @total + 2
    end

    if self.answer_strategy_7 == 1
      @total = @total + 2
    end

    if self.answer_strategy_8 == 1
      @total = @total + 1
    end

    case self.answer_strategy_9
    when 1
      @total = @total + 1
    else
      @total = @total - 1
    end

    case self.answer_strategy_10
    when 1
      @total = @total + 1
    else
      @total = @total - 1
    end

    case self.answer_strategy_11
    when 1..4
      @total = @total - 1
    when 5..7
      @total = @total + 1
    else
      @total = @total + 2
    end

    @total_max = 14

    if @total.to_i < 0
      @total = 0
    end

    @total_100 = (@total.to_i * 100) / @total_max.to_i

    @category = CategoryStrategy.find(self.category_strategy_id)

    @category.update(total_rate_strategy:@total, max_rate_strategy:@total_max, total_100_strategy:@total_100.floor)

  end

end
