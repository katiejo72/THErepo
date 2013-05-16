#*****************************************************************
#
#  palindrome.rb
#
#  This program is going to find the largest palindrome made from 
#  the product of two 3-digit numbers.
#
#  This is Problem 4 on Project Euler.
#
#*****************************************************************

class Palindrome

#	attr_accessor :n
#
#	def initialize(n)
#		@n = n
#	end

	def two
		factor1 = 99
		nums = []
		#ans = 0
		#ans_rev  = 0

		while factor1 >= 10   #factor1 = 99 - go until we get down to 10
			factor2 = 99   #factor2 = 99
			while factor2 >= 10  #go until we get down to 10
				ans = (factor1 * factor2).to_s 
				ans_rev = ans.reverse
				if ans = ans_rev
					nums << ans #instead of array, just store in another variable and compare to the last palindrome found, save the one that's bigger in the new variable
					            #the one you end up with will be the largest one found
					break
				end
				factor2 -= 1
			end
		end

			nums.each {|x| puts x}
	end

#	def three
#		factor1 = 999
#		factor2 = 999
#	end
end

answer = Palindrome.new
answer.two


#x = 999
#y = 999
#z = 0
#q = 0
#nums = []
#
#while x > 0
#	while y > 0
#	  z = (x * y).to_s
#	  q = z.reverse
#	  nums << z if z == q
#	  y -= 1
#	end
#	x -= 1
#end
#
#puts z



#x = 999 * 999
#z = 100
#nums = []
#
#while z < x
#	z = z.to_s
#	q = z.reverse
#	nums << z if z == q
#	z = z.to_i
#	z += 1
#end
#
#puts nums[-1]