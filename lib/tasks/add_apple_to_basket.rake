#to run rake task:
#rails/rake add_apple_to_basket:add\["Red",2\]

def get_basket(variety)
	basket_having_space = Basket.all.select{|b| b.apples.size < b.capacity}
	basket_having_space_same_variety = basket_having_space.find{|b| b.apples.first.variety == variety && b.apples.size > 0} rescue nil
	if basket_having_space_same_variety.nil?
		basket_having_space.find{|b| b.apples.size == 0}
	else
		basket_having_space_same_variety
	end			
end

def add_apples_to_basket(basket,variety)
	basket.apples.create!(variety: variety)
	basket.fill_rate = ((basket.apples.size.to_f/basket.capacity.to_f)*100).round
	basket.save
end

def full_basket(apple_count)
  puts "All baskets are full. We couldn't find the place for #{apple_count} apples"
end

namespace :add_apple_to_basket do 
	desc "Add apples to basket"
	task :add, [:variety,:count] => :environment do |t,args|
		variety = args[:variety].to_s
		count = args[:count].to_i
    basket = get_basket(variety)
		if basket.nil?
			full_basket(count)
		else
			for i in 1..count
				if basket.apples.size < basket.capacity
					add_apples_to_basket(basket,variety)
				else
					basket = get_basket(variety)
					if basket.nil?
						left_apple = count - i
						full_basket(left_apple)
						break
					else
						add_apples_to_basket(basket,variety)
					end
				end
			end
		end
	end
end