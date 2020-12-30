# frozen_string_literal: true

require_relative '../../base_solution'

module Day01
  class Solution < BaseSolution
    SUM = 2020

    def part_one
      find_entries(2)
    end

    def part_two
      find_entries(3)
    end

    private

    def find_entries(count)
      entries = numbers.combination(count).detect { |number| number.sum == SUM }
      entries.inject(:*)
    end

    def numbers
      input.split("\n").map(&:to_i)
    end
  end
end
