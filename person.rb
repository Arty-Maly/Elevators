# Person class 
# each person has a destination and an origin

class Person

	def initialize (max_floor)
		decide_origin(max_floor)
		decide_destination(max_floor)
		

	end

	def decide_origin(max)
		@origin = rand(1..max)
	end

	def decide_destination(max)
		@destination = rand(1..max)
		while @destination == @origin
			@destination = rand(1..max)
		end


		
	end

	def to_s
		"this is person at from floor " + @origin.to_s + " going to floor " + @destination.to_s
	end

	def get_destination
		return @destination
	end

end