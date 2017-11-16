def sort(unsor_arr)
  if unsor_arr.size < 2
  	return unsor_arr
  elsif unsor_arr.size > 1
  	left_hand = sort(unsor_arr[0...unsor_arr.length/2])
  	right_hand = sort(unsor_arr[unsor_arr.length/2..-1])
  	return merge(left_hand, right_hand)
  end

end

def merge(sor_arr1, sor_arr2)
	merged ||= []
	while sor_arr1.size != 0 && sor_arr2.size != 0
		if sor_arr1[0] < sor_arr2[0]
		  merged << sor_arr1.slice!(0)
		else
		  merged << sor_arr2.slice!(0)
		end
	end
	if sor_arr1 != []
		merged += sor_arr1
	elsif sor_arr2!= []
		merged += sor_arr2
	end
	merged
end

array1 = (1..15).to_a.shuffle

puts sort(array1)
