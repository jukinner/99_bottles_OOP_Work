
class Bottles
	def initialize

	end

	def verses (*args)
		args.each do |x| 
			return verse(x) 
		end
	end

	def verse (num)
		if num > 2
			return <<~VERSE
			#{num} bottles of beer on the wall, #{num} bottles of beer.
			Take one down and pass it around, #{num -1 } bottles of beer on the wall.
			VERSE
		elsif num == 2
			return <<~VERSE
			#{num} bottles of beer on the wall, #{num} bottles of beer.
			Take one down and pass it around, #{num -1 } bottle of beer on the wall.
			VERSE
		elsif num == 1
			return <<~VERSE
			1 bottle of beer on the wall, 1 bottle of beer.
			Take it down and pass it around, no more bottles of beer on the wall.
    	VERSE
    elsif num == 0
    	return <<~VERSE
			No more bottles of beer on the wall, no more bottles of beer.
			Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
		end
	end
end

test = Bottles.new

# p test.verse(99)
test.verses(99, 98)
