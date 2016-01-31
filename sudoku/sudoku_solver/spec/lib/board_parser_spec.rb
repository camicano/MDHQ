require 'spec_helper'

describe 'BoardParser module' do
	include BoardParser
	let(:original_file) { "5,4,6,1,9,8,2,_,7\n9,3,7,2,6,5,1,8,4\n2,8,1,3,4,7,5,9,6\n_,6,4,9,5,2,3,7,1\n7,5,9,8,_,1,4,6,2\n1,2,3,6,7,4,8,5,9\n3,1,5,7,2,9,6,4,8\n6,9,8,4,1,3,7,_,5\n_,7,2,5,8,6,9,1,3" }
	let(:result_file)   { "5,4,6,1,9,8,2,0,7\n9,3,7,2,6,5,1,8,4\n2,8,1,3,4,7,5,9,6\n0,6,4,9,5,2,3,7,1\n7,5,9,8,0,1,4,6,2\n1,2,3,6,7,4,8,5,9\n3,1,5,7,2,9,6,4,8\n6,9,8,4,1,3,7,0,5\n0,7,2,5,8,6,9,1,3" }
	let(:board) 				{ [[5,4,6,1,9,8,2,0,7],
									  		 [9,3,7,2,6,5,1,8,4],
										  	 [2,8,1,3,4,7,5,9,6],
										  	 [0,6,4,9,5,2,3,7,1],
										  	 [7,5,9,8,0,1,4,6,2],
										  	 [1,2,3,6,7,4,8,5,9],
										  	 [3,1,5,7,2,9,6,4,8],
										  	 [6,9,8,4,1,3,7,0,5],
										  	 [0,7,2,5,8,6,9,1,3]] }
										  	 
	let(:list_of_empty_cells) { [[0,7], [3,0], [4,4], [7,7], [8,0]] }

	describe '#fileToBoardParser' do
		context 'with a sudoku puzzle in csv format' do
			it 'returns a 2d array' do
				expect(fileToBoardParser(original_file)).to eq(board) 
			end

			it 'of integers' do
				expect(fileToBoardParser(original_file)[0][0]).to be_kind_of(Integer)
			end

			it 'with a 9x9 dimension' do
				expect(fileToBoardParser(original_file).length).to eq(9)
				expect(fileToBoardParser(original_file)[0].length).to eq(9)
			end
		end
	end

	describe '#boardToFileParser' do
		context 'with a sudoku puzzle in 2d array format' do
			it 'returns a string' do
				expect(boardToFileParser(board)).to eq(result_file) 
			end
		end
	end

	describe '#getListOfEmptyCells' do
		context 'with in a sudoku puzzle in 2d array format' do
			it 'returns a 2d array' do 
				expect(getListOfEmptyCells(board)).to eq(list_of_empty_cells) 
			end

			it 'one array per empty cell with 2 coordenates' do
				expect(getListOfEmptyCells(board).length).to eq(5)
				expect(getListOfEmptyCells(board)[0].length).to eq(2) 
			end
		end
	end
end