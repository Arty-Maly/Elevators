# Building class
# Building basicly builds the floors and the elavators

require './floor.rb'
require './person.rb'
class Building
	attr_accessor :elevator_hash
	attr_accessor :floor_hash
	
	def initialize (number_elevators, number_floors, max_elevator_load)
		
		set_number_of_elevators(number_elevators)
		set_number_of_floors(number_floors)

		create_floors(number_floors)
		create_elevators(number_elevators, max_elevator_load)
	end

	def set_number_of_elevators (number)
		@number_of_elevators = number
	end

	def set_number_of_floors (number)
		@number_of_floors = number
	end

	def create_floors (number)
		
		@floor_hash = Hash.new

		1.upto(number) do |i|
			@floor_hash[i] = Floor.new(@number_of_elevators, number, i)
		end
	end

	def create_elevators (number, load)
		@elevator_hash = Hash.new

		number.times do |i|
			@elevator_hash[i] = Elevator.new(load)

		end
	end

	

	

	def get_top_floor_number
		return @number_of_floors
	end

	def to_s
		puts "Building has " +@number_of_floors.to_s+ " floors and " +@number_of_elevators.to_s+ " elevators" 
	end
	

end