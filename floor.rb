# floor class
# each floor makes its buttons based on how many elevators 
# also has a queue of people waiting on this floor
# floor also creates the people
class Floor
	attr_accessor :queue
	def initialize(number_of_elevators, top)
		
		make_buttons(number_of_elevators)
		
		create_queue_of_people(top)
	end

	def make_buttons (number_of_elevators)
		@buttons = Array.new

		number_of_elevators.times do |i|
			@buttons.push([0,0])
		end

	end

	def get_buttons 
		return @buttons
	end

	def set_floor_number(number)
		@floor_number = number

	end

	def create_queue_of_people(max_floor)

		@queue = Array.new
		
		10.times do
			@queue.push(Person.new(max_floor))
		end	

	end

	def people_leaving(how_many)
		leaving = Array.new

		how_many.times do
			if queue.empty? 
				return leaving
			end
			leaving.push(queue.pop)
		end

		return leaving
	end

	def to_s
		"Floor has " + @queue.length.to_s + " people waiting "
	end
	
end