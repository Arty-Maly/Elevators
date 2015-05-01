# Person class 
# each person has a destination and an origin

class Person

	def initialize (max_floor, location)
	
		decide_destination(max_floor)
		@origin = location
		

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