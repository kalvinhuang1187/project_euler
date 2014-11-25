=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

product = 0

(1..1000).each do |a|
	(a+1..1000).each do |b|
		c = 1000 - a - b
		if (a*a + b*b == c*c)
			puts "a:#{a} b:#{b} c:#{c}"
			product = a*b*c
			break
		end
	end
	break if product > 0
end

puts product

