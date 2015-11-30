require "gosu"
require_relative "move"

class Planet

	attr_reader :xpos, :ypos, :xvel, :yvel, :mass

	def initialize data, system_size, window_size
		@xpos = data[0].to_f/system_size*window_size + window_size/2
		@ypos = data[1].to_f/system_size*window_size + window_size/2
		@xvel = data[2].to_f
		@yvel = data[3].to_f
		@mass = data[4].to_f
		@force = 0.0
		@image = Gosu::Image.new("images/#{data[5]}")
	end

	def warp x, y
		@x, @y = x, y
	end

	def draw 
		@image.draw(@xpos,@ypos,1)
	end

	def move planets
		planets.each do |planet|
			@dx = planet.xpos - @xpos
			@dy = planet.ypos - @ypos
			@r = Math.sqrt(@dx**2 + @dy**2)

			if @r == 0
				@force = 0
			elsif @dx > 0
				@force = 
					
	end


end