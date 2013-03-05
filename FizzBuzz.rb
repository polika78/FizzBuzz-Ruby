require "test/unit"

#Class FizzBuzz support two methods
#'generate' method takes number and 
# returns FizzBuzz string according to conditions
#'run' method takes a range of number and returns string of FizzBuzz
class FizzBuzz
	def generate num
		return num%15 == 0 ? 'FizzBuzz':(num%3 == 0 ? 'Fizz':(num%5 == 0 ? 'Buzz':num))
	end
	def run min, max
		return (min..max).map {|i| generate i}.join(',')
	end
end

#1.Testing three conditions for FizzBuzz
#2.Testing other numbers
#3.Testing print FizzBuzz string
class TestFizzBuzz < Test::Unit::TestCase
	def test_threeandfive
		fizzbuzz = FizzBuzz.new
		expected = fizzbuzz.generate 15
		assert_equal expected, 'FizzBuzz'
	end
	def test_three
		fizzbuzz = FizzBuzz.new
		expected = fizzbuzz.generate 3
		assert_equal expected,'Fizz'
	end
	def test_five
		fizzbuzz = FizzBuzz.new
		expected = fizzbuzz.generate 5
		assert_equal expected, 'Buzz'
	end
	def test_others
		fizzbuzz = FizzBuzz.new
		expected = fizzbuzz.generate 7
		assert_equal expected, 7
	end
	def test_print
		fizzbuzz = FizzBuzz.new
		expected = fizzbuzz.run 1, 15
		answer = '1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz'
		assert_equal expected, answer
	end
end

#Show FizzBuzz from 1 to 100
fizzbuzz = FizzBuzz.new
puts fizzbuzz.run 1,100

