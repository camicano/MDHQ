require 'spec_helper'

before do 
	let(:sudoku) { "1,2,-,4,5,6,7,8,9
			  		1,2,3,-,5,6,7,8,9
				  	1,2,3,4,5,6,7,8,9
				  	1,2,-,4,5,-,7,-,9
				  	1,2,3,4,5,6,7,8,9
				  	1,2,3,4,-,6,7,8,9
				  	1,2,3,4,5,6,7,8,9
				  	1,2,3,4,5,-,7,8,-
				  	-,2,3,4,-,6,7,8,9" }
end

describe 'Sudoku Solver class' do
	describe 'solver' do
		# it takes in a 2d array and a list of empty positions and returns a solution
	end	

	describe 'sudokuParser' do
		# it takes in a csv and returns a 2d array
		# it errors out if not given a correct file or no file at all
	end

	describe 'getListOfEmptyPositions' do
		# it takes in a 2d array and it returns a list of all empty locations
	end
end