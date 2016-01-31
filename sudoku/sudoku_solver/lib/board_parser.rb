module BoardParser
	def fileToBoardParser (file)
		file.split("\n").map do |line|
			line.split(',').map do |cell|
				
				if cell == '-'
					cell_value = 0
				else
					cell_value = cell.to_i
				end

				cell_value
			end
		end	
	end

	def boardToFileParser (board)
		board.map! { |line| line.join(",") }
		board.join("\n")
	end

	def getListOfEmptyCells (board)
		list_of_empty_cells = []
		i = 0

		while i < board.length
			row = board[i]
			j = 0

			while j < row.length
				cell = row[j]

				if cell == 0
					list_of_empty_cells << [i, j]
				end

				j += 1
			end

			i += 1
		end

		list_of_empty_cells
	end
end