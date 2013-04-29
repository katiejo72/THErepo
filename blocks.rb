array = :green, :purple, :pink, :orange, :turquoise, :emerald
array.each {|color| puts color}   #returns each value stored in the array

def neweach(array)                      #lines 4-11 do the exact same thing as line 2
	lengthvar = array.length
	lengthvar.times do |index|
		yield array[index]
	end
end

neweach(array) {|color| puts color}


num = 5, 56, 34, 17, 22, 39, 44, 101, 77

#map, select, reduce

#map
puts num.map {|digit| digit * 2}  #returns the product of each number in the array * 2

#reduce

puts num.reduce(5) {|sum,digit| sum + digit}  #returns the sum off all numbers in the array (395) + 5 = 400

#select

puts num.select {|digit| digit.odd?}  #returns all the odd numbers in the array