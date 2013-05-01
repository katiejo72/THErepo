class Multiples

	def ten

		i = 1
		z = 0
	
		while i < 10
			if i % 3 == 0
				z += i
			elsif i % 5 == 0
				z += i
			end
	
			i += 1
		end

		puts z
	end

	def thousand

		i = 1
		z = 0

		while i < 1000
			if i % 3 == 0
				z += i
			elsif i % 5 == 0
				z += i
			end

			i += 1
		end

		puts z
	end
end

mult = Multiples.new
mult.ten
mult.thousand