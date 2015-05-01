# elevator class
# elevator keeps track of the people on board its max load, how many people it is carrying and its direction up/down
class Elevator
attr_accessor :current_floor

	def initialize(max)
		@current_floor = 1
		@people = Array.new
		@max_load = max
		@current_load = 0
		@direction = 1
	end

	def board(array_of_people)

			@current_load += array_of_people.length
			@people.concat(array_of_people)
	end

	def leave
		@people.each do |person|
			if @current_floor == person.get_destination
				
				@people.delete(person)
				@current_load = @current_load - 1
			end
		end

	end

	def get_current_load 
		return @current_load
	end

	def get_current_floor
		return @current_floor
	end
	def change_direction 
		@direction = @direction * -1
	end

	def get_direction
		return @direction
	end
	def move

		@current_floor = @current_floor+@direction

	end

	def to_s
		puts "ID: " + (self.__id__.to_i % 1000).to_s + " elevator is leaving floor " + (@current_floor).to_s + " with " + @current_load.to_s + " people on board"
	end
end