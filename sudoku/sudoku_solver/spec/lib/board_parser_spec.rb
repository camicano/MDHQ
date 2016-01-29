require 'spec_helper'

describe 'BoardParser module' do
	include BoardParser
	let(:sudoku_puzzle) { '1,2,-,4,5,6,7,8,9
												 1,2,3,-,5,6,7,8,9
												 1,2,3,4,5,6,7,8,9
											 	 1,2,-,4,5,-,7,-,9
												 1,2,3,4,5,6,7,8,9
												 1,2,3,4,-,6,7,8,9
												 1,2,3,4,5,6,7,8,9
												 1,2,3,4,5,-,7,8,-
												 -,2,3,4,-,6,7,8,9' }

	let(:formatted_board) { [[1,2,0,4,5,6,7,8,9],
										  		 [1,2,3,0,5,6,7,8,9],
											  	 [1,2,3,4,5,6,7,8,9],
											  	 [1,2,0,4,5,0,7,0,9],
											  	 [1,2,3,4,5,6,7,8,9],
											  	 [1,2,3,4,0,6,7,8,9],
											  	 [1,2,3,4,5,6,7,8,9],
											  	 [1,2,3,4,5,0,7,8,0],
											  	 [0,2,3,4,0,6,7,8,9]] }

	let(:list_of_empty_cells) { [[0,2], [1,3], [3,2], [3,5], [3,7], [5,4], [7,5], [7,8], [8,0], [8,4]] }

	describe '#fileParser' do
		describe 'takes in a sudoku puzzle in csv format' do
			it { expect(fileParser(sudoku_puzzle)).to eq(formatted_board) }
			it { expect(fileParser(sudoku_puzzle).length).to eq(9) }
			it { expect(fileParser(sudoku_puzzle)[0].length).to eq(9) }
			it { expect(fileParser(sudoku_puzzle)[0][0]).to be_kind_of(Integer) }
		end
	end

	describe '#getListOfEmptyCells' do
		describe 'takes in a sudoku puzzle in 2d array format' do
			it { expect(getListOfEmptyCells(formatted_board)).to eq(list_of_empty_cells) }
			it { expect(getListOfEmptyCells(formatted_board).length).to eq(10) }
			it { expect(getListOfEmptyCells(formatted_board)[0].length).to eq(2) }
		end
	end
end