module RuleCheck
	def existsInRow? (board, row_number, number)
	  existsInArray? board[row_number], number
	end

	def existsInSquare? (board, square_coordinates, number)
		row_number = square_coordinates[0]
		column_number = square_coordinates[1]
		square = []

		i = 0
		while i < 3
			j = 0
			while j < 3
	 			square << board[row_number + i][column_number + j]
	 			j += 1
	 		end
			i += 1
		end

		existsInArray? square, number
	end

	def existsInColumn? (board, column_number, number)
		column = []

		i = 0
		while i < 9
			column << board[i][column_number] 
			i += 1
		end	

		existsInArray? column, number
	end

	def isValueValid? (board, cell_coordinates, number)
		square_coordinates = getSquareCoordinates cell_coordinates

		if !existsInColumn?(board, cell_coordinates[0], number) && !existsInSquare?(board, square_coordinates, number) && !existsInColumn?(board, cell_coordinates[1], number)
			return true
		end

		return false
	end

	private
	def existsInArray? (array, number)
		array.each do |cell|
			if cell == number
				return true
			end
		end

		return false
	end

	def getSquareCoordinates(cell_coordinates)
		cell_row = cell_coordinates[0]
		cell_column = cell_coordinates[1]

		if cell_row <= 2
			square_row = 0
		elsif cell_row > 3 && cell_row <= 5
			square_row = 3 
		elsif cell_row > 5
			square_row = 5
		end

		if cell_column <= 2
			square_column = 0
		elsif cell_column > 3 && cell_column <= 5
			square_column = 3
		elsif cell_column > 5
			square_column = 5
		end

		return [square_row, square_column]
	end
end