
class Person #outerclass
		def initialize(name)
			@name = name
		end
end

	class Student < Person
		def learn
			puts "I get it!"
		end

		def student_intro
			puts "Hi, my name is #{@name}, and I am a student"
		end
	end

	class Instructor < Person
		def teach
			puts "Everything in Ruby is an Object."
		end

		def instructor_intro
			puts "Hi, my name is #{@name} and I am an instructor"
		end
	end
