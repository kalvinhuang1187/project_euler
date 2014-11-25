=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end

#Solution 1: iterate thru each number and see if it is a multiple of 3 or 5
def iter_soln
	total = 0
	(0..999).each do |i|
		total += i if(i%3 == 0 || i%5 == 0)
	end

	puts total
end

#Solution 2: sum_multiples computes the sum of multiples up to 'upto' param. do this for multiples of 3 and 5 and subtract
# the numbers that are multiple of both 3 and 5
def sum_multiples(multiple, upto)
  n = (upto-1) / multiple
  n * (n+1) / 2 * multiple
end

def constant_soln
	solution = sum_multiples(3,1000) + sum_multiples(5,1000) - sum_multiples(15,1000)
	puts solution
end

iter_soln
constant_soln

