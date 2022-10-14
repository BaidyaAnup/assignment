#after_save to be called on Apple obj only
module Blending
	extend ActiveSupport::Concern
	included do 
		after_save :make_juice, :if => :is_apple?
	end
	#check if parent class is apple
	def is_apple?
		self.is_a?(Apple)
	end

	def make_juice
		puts "Apple juice only!"
	end
end
