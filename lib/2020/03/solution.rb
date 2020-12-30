# frozen_string_literal: true

require_relative '../../base_solution'

module Day03
  class Solution < BaseSolution
    TREE = '#'
    SLOPES = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]].freeze

    def part_one
      count_trees(3, 1)
    end

    def part_two
      SLOPES.map { |(right, down)| count_trees(right, down) }.inject(:*)
    end

    private

    def count_trees(right, down)
      x = 0
      y = 0
      trees = 0
      while y < lines.length - 1
        x += right
        x %= lines[0].length
        y += down

        trees += 1 if lines[y][x] == TREE
      end

      trees
    end

    def lines
      input.split("\n").map { |line| line.split('') }
    end
  end
end
