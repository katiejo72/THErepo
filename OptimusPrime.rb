#******************************************************
#
#  OptimusPrime.rb
#
#  This is a pretty "flower box" for this 
#  spiffy little Ruby program.
#
#  This program is going to find the largest
#  prime factor of a very large number.
#
#  This is problem 3 on Project Euler.  (Apparently 
#  pronounced like Oiler even though it's spelled like 
#  Yuler.)
#
#******************************************************

require "prime"

class Primes

	attr_accessor :n

	def initialize(n)
		@n = n
	end

	def findFactors
		#find all the prime numbers up to the square root of n and store in an array, primes
		x = 2
		j = Math.sqrt(@n)
		primes = Array.new
	
		while x <= j

			if x.prime?
				primes.push(x)
			end

			x += 1

		end

		#find all the numbers stored in the array, primes, that are factors of n
		i = 0
		v = 0
		factors = Array.new

		while i < primes.length

			v = primes[i]
			
			if @n % v == 0
				factors.push(v)
			end

			i += 1

		end

		#print the last number stored in the array
		puts factors[-1]

		#primes.each {|nums| puts nums}
		#factors.each {|nums| puts nums}
	
	end
end

#factor = Primes.new(13195)
factor = Primes.new(600851475143)
factor.findFactors