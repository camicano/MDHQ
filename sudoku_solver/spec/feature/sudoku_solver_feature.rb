require 'spec_helper'
# feature: Solve a sudoku puzzle
# Scenario: Solves a sudoku puzzle
# given a correct csv format
# with a possible answer
# then the program outputs replaces the csv with the solved puzzle

# given a correct csv format
# with a inpossible answer
# then the program throws an error showing that the puzzle cant be solved

# given an incorrect csv formet
# then it throws an error




# EXAMPLE!!!!
# describe "Search courses" do
#   it "by topic" do
#     create_course_catalog
#     create_biology_courses("A001", "B205")
#     search_for('biology')
#     page.should have_content "A001"
#     page.should have_content "B205"
#   end
# end

# # in spec/support/request_helpers.rb
# module RequestHelpers
#   def create_course_catalog
#     240.times { Course.create! }
#   end

#   def create_biology_courses(*names)
#     names.each { |name| Course.create!(topic: "biology", name: name)
#   end

#   def search_for(query)
#     visit search_path
#     fill_in "Search", with: query
#     click_button "Search"
#   end
# end

# RSpec.configure do |config|
#   config.include RequestHelpers, type: :request
# end