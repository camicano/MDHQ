require_relative 'rule_check'
require_relative 'board_parser'

class SudokuSolver
	include RuleCheck
	include BoardParser

	def initialize(file)
		@board = fileParser file
		@empty_cells = getListOfEmptyCells @board
	end

	def solve
		board_limit = 9
		i = 0

		while i < @empty_cells.length
			row = @empty_cells[i][0]
			column = @empty_cells[i][1]
			value = @board[row][column] + 1
			valueExists = true

			while valueExists  && value <= board_limit
				if isValueValid? @board, @empty_cells[i], value
					valueExists = false
					@board[row][column] = value
					i += 1
				else
					value += 1
				end
			end

			if valueExists
				@board[row][column] = 0
				i -= 1
			end
		end		
		solution = @board.map { |row| row.join(",") }

		return solution.join("\n")
	end
end