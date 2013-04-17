array = :green, :purple, :pink, :orange, :turquoise, :emerald
array.each {|color| puts color}

def neweach(array)
	lengthvar = array.length
	lengthvar.times do |index|
		yield array[index]
	end
end

neweach(array) {|color| puts color}