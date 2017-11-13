#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.

def cipher(string, shift)
  shift %= 26
  string.each_byte do |char|
    if char.between?(65,90)
    	char += shift
    	char -= 26 if char > 90
    end
    if char.between?(97,122)
    	char += shift
    	char -= 26 if char > 122
    end
    print char.chr
    end
end

puts "What is the text?"
txt = gets.chomp

puts "By how many numbers?"
num = gets.chomp.to_i

cipher(txt, num)
