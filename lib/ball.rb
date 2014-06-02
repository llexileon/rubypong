class Ball

	SIZE = 16

	attr_accessor :x, :y, :angle, :speed

	def initialize
		@x = Pong::WIDTH/2
		@y = Pong::HEIGHT/2
		@angle = 45
		@speed = 4
	end

	def move!
		dx = Gosu.offset_x(angle, speed)
		dy = Gosu.offset_x(angle, speed)

		@x += dx
		@y += dy

		if @y < 0
			@y =0
			@angle = Gosu.angle(0, 0, dx, -dy)
		end
	end


	def x1; @x - SIZE/2; end
	def x2; @x + SIZE/2; end
	def y1; @y - SIZE/2; end
	def y2; @y + SIZE/2; end

	def draw(window)
		color = Gosu::Color::rgb(48, 162, 242)
		window.draw_quad(
			x1, y1, color,
			x1, y2, color,
			x2, y2, color,
			x2, y1, color
			)
	end
end
