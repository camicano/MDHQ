require 'rspec'
require_relative '../lib/helpers/board_parser'
require_relative '../lib/helpers/rule_check'
require_relative '../lib/sudoku_solver'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end