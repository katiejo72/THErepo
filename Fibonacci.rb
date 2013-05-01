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

#		if c%2 == 0 ? true : false
#			d += c
#		end
		if c.even?
			d += c
		end
	end

	puts d
end

#fib (1000)
fib (4000000)