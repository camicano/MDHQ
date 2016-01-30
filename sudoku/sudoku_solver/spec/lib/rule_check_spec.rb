require 'spec_helper'

describe 'RuleCheck module' do
	include RuleCheck

	let(:board) { [[1,2,0,4,5,6,7,8,9],
					  		 [1,2,3,0,5,6,7,8,9],
						  	 [1,2,3,4,5,6,7,8,9],
						  	 [1,2,0,4,5,0,7,0,9],
						  	 [1,2,3,4,5,6,7,8,9],
						  	 [1,2,3,4,0,6,7,8,9],
						  	 [1,2,3,4,5,6,7,8,9],
						  	 [1,2,3,4,5,0,7,8,0],
						  	 [0,2,3,4,0,6,7,8,9]] }

	describe '#existsInRow?' do
		context 'given a row coordinates and a number' do
			it 'is truthy if number exists' do
				expect(existsInRow?(board, 3, 4)).to be true
			end

			it 'is falsey if number doesnt exists' do
				expect(existsInRow?(board, 0, 3)).to be false
			end
		end
	end

	describe '#existsInSquare?' do
		context 'given a square coordinates and a number' do
			it 'is truthy if number exists' do
				expect(existsInSquare?(board, [3, 3], 4)).to be true
			end

			it 'is falsey if number doesnt exists' do
				expect(existsInSquare?(board, [6, 0], 4)).to be false
			end
		end
	end

	describe '#existsInColumn?' do
		context 'given a column coordinates and a number' do
			it 'is truthy if number exists' do
				expect(existsInColumn?(board, 2, 3)).to be true
			end

			it 'is falsey if number doesnt exists' do
				expect(existsInColumn?(board, 0, 2)).to be false
			end
		end
	end

	describe '#isValueValid?' do
		context 'given a cell coordinates and a number' do
			it 'is truthy if number follows all sudoku rules' do
				expect(isValueValid?(board, [0, 8], 5)).to be true
			end

			it 'is falsey if number doesnt follows all sudoku rules' do
				expect(isValueValid?(board, [0, 2], 2)).to be false
			end
		end
	end

	describe '#existsInArray?' do
		context 'given an array and a number' do
			it 'is truthy if number exists in array' do
				expect(existsInArray?([1,1,1,2,3,4,2,4,2], 3)).to be true
			end

			it 'is falsey if number doesnt exists in array' do
				expect(existsInArray?([0,0,0,9,0,0,0], 7)).to be false
			end
		end
	end

	describe '#getSquareCoordinates' do
		context 'given an array with 2 dimensions' do
			it 'is returns the initial coordinates of where the square begins' do
				expect(getSquareCoordinates([1,2])).to eq([0,0])
			end
		end
	end
end