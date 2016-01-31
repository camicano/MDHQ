require 'spec_helper'

describe 'BoardParser module' do
	include BoardParser
	let(:string_board)  { [["5","4","6","1","9","8","2","-","7"],
									  		 ["9","3","7","2","6","5","1","8","4"],
										  	 ["2","8","1","3","4","7","5","9","6"],
										  	 ["-","6","4","9","5","2","3","7","1"],
										  	 ["7","5","9","8","-","1","4","6","2"],
										  	 ["1","2","3","6","7","4","8","5","9"],
										  	 ["3","1","5","7","2","9","6","4","8"],
										  	 ["6","9","8","4","1","3","7","-","5"],
										  	 ["-","7","2","5","8","6","9","1","3"]] }
	let(:integer_board) { [[5,4,6,1,9,8,2,0,7],
									  		 [9,3,7,2,6,5,1,8,4],
										  	 [2,8,1,3,4,7,5,9,6],
										  	 [0,6,4,9,5,2,3,7,1],
										  	 [7,5,9,8,0,1,4,6,2],
										  	 [1,2,3,6,7,4,8,5,9],
										  	 [3,1,5,7,2,9,6,4,8],
										  	 [6,9,8,4,1,3,7,0,5],
										  	 [0,7,2,5,8,6,9,1,3]] }
										  	 
	let(:list_of_empty_cells) { [[0,7], [3,0], [4,4], [7,7], [8,0]] }

	describe '#convertStringToInteger' do
		context 'with an 2d arrays of string' do
			it 'returns a 2d array' do
				expect(convertStringToInteger(string_board)).to eq(integer_board) 
			end

			it 'of integers' do
				expect(convertStringToInteger(string_board)[0][0]).to be_kind_of(Integer)
			end

			it 'with a 9x9 dimension' do
				expect(convertStringToInteger(string_board).length).to eq(9)
				expect(convertStringToInteger(string_board)[0].length).to eq(9)
			end
		end
	end

	describe '#getListOfEmptyCells' do
		context 'with in a sudoku puzzle in 2d array format' do
			it 'returns a 2d array' do 
				expect(getListOfEmptyCells(integer_board)).to eq(list_of_empty_cells) 
			end

			it 'one array per empty cell with 2 coordenates' do
				expect(getListOfEmptyCells(integer_board).length).to eq(5)
				expect(getListOfEmptyCells(integer_board)[0].length).to eq(2) 
			end
		end
	end
end