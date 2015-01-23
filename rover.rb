
class Rover
	attr_accessor :x, :y, :direction

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instructions(instructions)
		instructions.each do |j|
			if j == "M"
				then move
			elsif j == "L" || j == "R"
				then turn(j)
			end
		end
	end

	def move
		if @direction == "N" then @y += 1
		elsif @direction == "S" then @y -= 1
		elsif @direction == "E" then @x += 1
		elsif @direction == "W" then @x -= 1
		end
	end

	def turn(turn_dir)

		if @direction == "N" && turn_dir == "L" then @direction = "W"
		elsif @direction == "N" && turn_dir == "R" then @direction = "E" 
		elsif @direction == "W" && turn_dir == "L" then @direction = "S"
		elsif @direction == "W" && turn_dir == "R" then @direction = "N" 
		elsif @direction == "S" && turn_dir == "L" then @direction = "E"
		elsif @direction == "S" && turn_dir == "R" then @direction = "W" 
		elsif @direction == "E" && turn_dir == "L" then @direction = "N"
		elsif @direction == "E" && turn_dir == "R" then @direction = "S" 
		end
	end

	def to_s
		puts "#{@x} -> #{@y} -> #{@direction}"
	end
end

print "Please enter the size of the plateau: "
plateau_size = gets.chomp

print "Where is the first rover?"
position1 = gets.chomp



print "Where do you want the first rover to move?"
readinstruction1 = gets.chomp

position1_array = position1.split(" ")
readinstruction1_array = readinstruction1.split("")
rover1 = Rover.new(position1_array[0].to_i, position1_array[1].to_i, position1_array[2])

rover1.read_instructions(readinstruction1_array)
rover1.to_s

print "Where is the second rover?"
position2 = gets.chomp
position2_array = position2.split(" ")
rover2 = Rover.new(position2_array[0].to_i, position2_array[1].to_i, position2_array[2])

print "Where do you want the second rover to move?"
readinstruction2 = gets.chomp
readinstruction2_array = readinstruction2.split("")
rover2.read_instructions(readinstruction2_array)
rover2.to_s




# read_instruction(array)

	#Direction: N E S W

	#[0,0]

	#Strings of letters L, R, M

#How big do you want the plateau to be? (x, y)
#area=get.chomp
#(Max)

#Where is the rover in the grid, which direction is it facing? (x, y, direction)
#position = gets.chomp

#How do you want the rover to move

#take string of movement (LRM), and seperate it an array.

#string.split("") - splits a string and puts it into array
#[L,M,R,M,R]


	