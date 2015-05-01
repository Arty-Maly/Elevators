# Simulation class, which makes the elevator move and runs the simulation
#the elevator moves up and down one floor at a time starting from ground floor and once it reaches the top starts going down to ground floor again

require './building.rb'
require './elevator.rb'
class Simulation

	def initialize (number_elevators, number_floors, max_elevator_load)
		@building = Building.new(number_elevators, number_floors, max_elevator_load)
		@max = max_elevator_load
		
		
		
	end

	def run (ticks)
		puts " "
		@building.to_s
		puts" "
		ticks.times do |i|
			
			@building.elevator_hash.values.each do |elevator|
				
				elevator.leave
				
				if elevator.get_current_load < @max
					space = @max - elevator.get_current_load
			 			
					elevator.board(@building.floor_hash[elevator.get_current_floor].people_leaving(space))
		
				end
				elevator.to_s
				elevator.move
				
				if elevator.get_current_floor == @building.get_top_floor_number && elevator.get_direction == 1
					
					elevator.change_direction
				end
				if elevator.get_current_floor == 1 && elevator.get_direction == -1
					elevator.change_direction
				end
				
			end
			#use sleep so the simulation would not run too fast
			sleep (0.3)
			
			
		end

		i= 0 
		@building.floor_hash.each_value do |val|
			i+=1
			puts i.to_s + val.to_s
		end
		
	end



	

end

#
simul = Simulation.new(2,5,3)
# running simulation for 35 ticks
simul.run(35)



