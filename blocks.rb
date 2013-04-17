array = :green, :purple, :pink, :orange, :turquoise, :emerald
array.each {|color| puts color}

def neweach(array)
	lengthvar = array.length
	lengthvar.times do |index|
		yield array[index]
	end
end

neweach(array) {|color| puts color}


num = 5, 56, 34, 17, 22, 39, 44, 101, 77

#map, select, reduce

#map
puts num.map {|digit| digit * 2}

#reduce

puts num.reduce(5) {|sum,digit| sum + digit}

#select

puts num.select {|digit| digit.odd?}