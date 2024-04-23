class Psychologist < ApplicationRecord
  has_many :evaluateds, dependent: :destroy
end
