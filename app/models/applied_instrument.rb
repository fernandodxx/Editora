class AppliedInstrument < ApplicationRecord
  belongs_to :evaluated
  belongs_to :instrument

  scope :finished, -> { where finished: true }

  POINTS_MAPPING = { 1 => 3, 2 => 2, 3 => 1, 4 => 0 }

  def result
    point_for_answer_1 + point_for_answer_2 + point_for_answer_3 + point_for_answer_4 + point_for_answer_5
  end

  private
    def point_for_answer_1
      POINTS_MAPPING[answer_1] || 0
    end

    def point_for_answer_2
      POINTS_MAPPING[answer_2] || 0
    end

    def point_for_answer_3
      POINTS_MAPPING[answer_3] || 0
    end

    def point_for_answer_4
      POINTS_MAPPING[answer_4] || 0
    end

    def point_for_answer_5
      POINTS_MAPPING[answer_5] || 0
    end
end
