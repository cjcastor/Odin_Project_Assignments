=begin
	Implement a method #substrings that takes a word as the first argument and then an array of valid
	substrings (your dictionary) as the second argument. It should return a hash listing each
	substring (case insensitive) that was found in the original string and how many times it was found.
=end

def substrings(key_word, dictionary)
	count = Hash.new(0)
	dictionary.each { |word| count[word.downcase] += 1 if word.downcase.include? key_word.downcase }
	return count
end

puts substrings("aT",["Cat","fog","hat","log","attack","cat","blat"])