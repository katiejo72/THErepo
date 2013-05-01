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
#  Run time: 1 minute 13 seconds
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
		j = Math.sqrt(@n)
		primes = []
		(2..j).each {|x| primes << x if x.prime?}

		#find all the numbers stored in the array, primes, that are factors of n
		#store the factors in a new array, factors
		factors = []			
		primes.each {|v| factors << v if @n % v == 0}

		#print the last number stored in the factors array
		puts factors[-1]

		#primes.each {|nums| puts nums}
		#factors.each {|nums| puts nums}
	
	end
end

#factor = Primes.new(13195)
factor = Primes.new(600851475143)
factor.findFactors