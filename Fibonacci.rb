#*****************************************************************
#
#  Fibonacci.rb
#
#  This program is going to find the sum of the even-valued terms
#  in the Fibonacci sequence whose values do not exceed four
#  million.
#
#  This is Problem 2 on Project Euler.
#
#*****************************************************************

def fib (n)

	a=1
	b=2
	c=0
	d=2

	while c < n
		c=a+b
		break if c >= n
		a=b
		b=c

		### first run ###   
		#if c%2 == 0 ? true : false
		#	d += c
		#end

		### a little refactoring ###
		#if c.even?
		#	d += c
		#end

		### a little more refactoring ###
    d += c if c.even?
	end

	puts d
end

#fib (1000)
fib (4000000)