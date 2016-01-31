require 'spec_helper'

describe 'RuleCheck module' do
	include RuleCheck

	let(:board) { [[5,4,6,1,9,8,2,0,7],
					  		 [9,3,7,2,6,5,1,8,4],
						  	 [2,8,1,3,4,7,5,9,6],
						  	 [0,6,4,9,5,2,3,7,1],
						  	 [7,5,9,8,0,1,4,6,2],
						  	 [1,2,3,6,7,4,8,5,9],
						  	 [3,1,5,7,2,9,6,4,8],
						  	 [6,9,8,4,1,3,7,0,5],
						  	 [0,7,2,5,8,6,9,1,3]] }

	describe '#existsInRow?' do
		context 'given a row with a 4 and a number 4' do
			it { expect(existsInRow?(board, 3, 4)).to be true }
		end

		context 'given a row without a 3 and a number 3' do
			it { expect(existsInRow?(board, 0, 3)).to be false }
		end
	end

	describe '#existsInSquare?' do
		context 'given a square with a 3 and a number 3' do
			it { expect(existsInSquare?(board, [6, 0], 3)).to be true }
		end

		context 'given a square without a 3 and a number 3'  do
			it { expect(existsInSquare?(board, [3, 3], 3)).to be false }
		end
	end

	describe '#existsInColumn?' do
		context 'given a column with a 7 and a number 7' do
			it { expect(existsInColumn?(board, 7, 7)).to be true }
		end

		context 'given a column without a 4 and a number 4' do
			it { expect(existsInColumn?(board, 0, 4)).to be false }
		end
	end

	describe '#isValueValid?' do
		context 'given a cell coordinates and a number that is valid' do
			it { expect(isValueValid?(board, [0, 7], 3)).to be true }
		end

		context 'given a cell coordinates and a number that is not valid' do
			it { expect(isValueValid?(board, [3, 0], 7)).to be false }
		end
	end

	describe '#existsInArray?' do
		context 'given an array with a 3 and a number 3' do
			it { expect(existsInArray?(board[1], 3)).to be true }
		end

		context 'given an array without a 3 and a number 3' do
			it { expect(existsInArray?(board[0], 3)).to be false }
		end
	end

	describe '#getSquareCoordinates' do
		context 'given an array with 2 dimensions' do
			it { expect(getSquareCoordinates([1,2])).to eq([0,0]) }
		end
	end
end