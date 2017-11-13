#Implementation of bubble sort algorithm

def bubble_sort(list)
	switch = 1
	until switch == 0
		switch = 0
		list.each_index do |x|
			unless x + 1 == list.size
				if list[x] > list[x + 1]
					list[x], list[x+1] = list[x+1], list[x]
					switch = 1
				end
			end
		end
	end

	return list
end

puts bubble_sort([4, 6, 1, 3, 9, 7])