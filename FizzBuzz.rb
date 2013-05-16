#*************************************
#
#  This is something called FizzBuzz
#
#*************************************

#def fizzbuzz
#	nums = Array(1..100)
#	#nums = * (1..100)
#  x = 0
#
#  while x < nums.length
#  	y = nums[x]
#  	if y%3 == 0 && y%5 == 0
#  		nums[x] = "FizzBuzz"
#  	elsif y%3 == 0
#  		nums[x] = "Fizz"
#  	elsif y%5 == 0
#  		nums[x] = "Buzz"
#  	end
#
#  	x += 1
#  end
#
#  nums.each {|n| puts n}
#end
#
#fizzbuzz


#def fizzbuzz
#  #(1..100).each do |x|
#	100.times {|y| puts value(y)}
#end

def value(x)
  return "FizzBuzz" if x%3 == 0 && x%5 == 0
  return "Fizz" if x%3 == 0
  return "Buzz" if x%5 == 0
  return x
end

#fizzbuzz
100.times {|y| puts value(y)}