require 'spec_helper'

describe 'Sudoku Solver class' do
	let(:unsolved_board) { "5,4,6,1,9,8,2,_,7\n9,3,7,2,6,5,1,8,4\n2,8,1,3,4,7,5,9,6\n_,6,4,9,5,2,3,7,1\n7,5,9,8,_,1,4,6,2\n1,2,3,6,7,4,8,5,9\n3,1,5,7,2,9,6,4,8\n6,9,8,4,1,3,7,_,5\n_,7,2,5,8,6,9,1,3" }
	let(:solved_board)   { "5,4,6,1,9,8,2,3,7\n9,3,7,2,6,5,1,8,4\n2,8,1,3,4,7,5,9,6\n8,6,4,9,5,2,3,7,1\n7,5,9,8,3,1,4,6,2\n1,2,3,6,7,4,8,5,9\n3,1,5,7,2,9,6,4,8\n6,9,8,4,1,3,7,2,5\n4,7,2,5,8,6,9,1,3" }
  let(:solver) 				 { SudokuSolver.new(unsolved_board) }

	describe '#solve' do
		context 'given a valid unsolved sudoku puzzle' do
			it { expect(solver.solve).to eq(solved_board) }
		end
	end	
end