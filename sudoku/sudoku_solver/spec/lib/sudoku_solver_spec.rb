require 'spec_helper'

describe 'Sudoku Solver class' do
	let(:unsolved_board) { "5,4,6,_,_,8,2,_,7
 											   9,3,7,2,6,5,1,8,4
											   2,8,1,_,4,7,5,9,6
											   _,6,4,9,5,2,3,7,1
											   7,5,9,8,_,1,4,6,2
											   1,2,3,6,7,4,_,5,9
											   3,1,5,7,2,9,6,4,8
											   6,_,8,4,1,3,7,_,5
											   _,7,2,5,_,6,9,1,3" }

  let(:solved_board) { "5,4,6,1,9,8,2,3,7
												9,3,7,2,6,5,1,8,4
												2,8,1,3,4,7,5,9,6
												8,6,4,9,5,2,3,7,1
												7,5,9,8,3,1,4,6,2
												1,2,3,6,7,4,8,5,9
												3,1,5,7,2,9,6,4,8
												6,9,8,4,1,3,7,2,5
												4,7,2,5,8,6,9,1,3" }

  let(:solver) { SudokuSolver.new(unsolved_board) }

	describe '#solve' do
		context 'given a valid unsolved sudoku puzzle' do
			it { expect(solver.solve).to eq(solved_board) }
		end
	end	
end