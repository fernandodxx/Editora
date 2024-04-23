class Evaluated < ApplicationRecord
  belongs_to :psychologist
  has_many :applied_instruments, dependent: :destroy
end
