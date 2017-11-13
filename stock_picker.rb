=begin
	
rescue Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
	
=end

def stockpicker(prices)
	size = prices.length
    days = [0,0]

	prices.each do |price1|
		prices.each do |price2|
			if price1 - price2 > days[0] - days[1] && prices.index(price1) < prices.index(price2)
				days[0] = price1
				days[1] = price2
			end
		end
	end

	return days
end

puts stockpicker([1,3,17,15,12,4,2])