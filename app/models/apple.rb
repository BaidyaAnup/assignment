class Apple < ApplicationRecord
  include Blending
  belongs_to :basket
  validates :variety, :presence => true
end
