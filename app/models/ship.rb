class Ship
	attr_reader :size, :row, :col

	def initialize(row, col)
		@size = rand(1..5)
		@row = row
		@col = col
	end

	def self.shoot(ship, row, col)
		if ship.row == row
			hit_target?(ship.col, col, ship.size)
		end
	end

	def self.hit_target?(col1, col2, size)
		col2.between?(col1, col1+size)
	end

end