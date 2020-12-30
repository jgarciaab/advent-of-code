# frozen_string_literal: true

class BaseSolution
  attr_reader :file_path

  def initialize(date_folder)
    @file_path = File.expand_path("#{date_folder}/input.txt", __dir__)
  end

  def input
    File.read(file_path)
  end

  def part_one
    'Not Implemented yet'
  end

  def part_two
    'Not Implemented yet'
  end
end
