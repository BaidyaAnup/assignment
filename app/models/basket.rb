class Basket < ApplicationRecord
  has_many :apples
  validates :capacity, :presence => true, :inclusion => 2..27
  validates :fill_rate, :presence => true
end
