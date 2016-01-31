require 'rspec'
require_relative '../lib/board_parser'
require_relative '../lib/sudoku_solver'
require_relative '../lib/rule_check'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end