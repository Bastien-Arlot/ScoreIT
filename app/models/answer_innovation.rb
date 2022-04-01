class AnswerInnovation < ApplicationRecord
  belongs_to :category_innovation

  validates :answer_innovation_1, presence: true
  validates :answer_innovation_2, presence: true
  validates :answer_innovation_3, presence: true
  validates :answer_innovation_4, presence: true
  validates :answer_innovation_5, presence: true
  validates :answer_innovation_6, presence: true
  validates :answer_innovation_7, presence: true

  validates :category_innovation_id, uniqueness: true, presence: true

  after_create :scoring_innovation

  def scoring_innovation

    @total = 0

    if self.answer_innovation_1 == 1
      @total = @total + 2
    end

    if self.answer_innovation_2 == 4
      @total = @total + 1
    end

    if self.answer_innovation_3.to_i > 20
      @total = @total + 1
    end

    if self.answer_innovation_4 == 1
      @total = @total + 2
    end

    if self.answer_innovation_5.to_i > 1
      @total = @total + 1
    end

    if self.answer_innovation_6 == 1
      @total = @total + 1
    end

    if self.answer_innovation_7 == 1
      @total = @total + 1
    else
      @total = @total - 1
    end

    @total_max = 9

    if @total.to_i < 0
      @total = 0
    end

    @total_100 = (@total.to_i * 100) / @total_max.to_i

    @category = CategoryInnovation.find(self.category_innovation_id)

    @category.update(total_rate_innovation:@total, max_rate_innovation:@total_max, total_100_innovation:@total_100.floor)

  end

end
