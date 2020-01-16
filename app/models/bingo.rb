class Bingo < ApplicationRecord
  validates :numbers, uniqueness: true, presence: true
end
