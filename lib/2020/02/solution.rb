# frozen_string_literal: true

require_relative '../../base_solution'

module Day02
  class Solution < BaseSolution
    MATCHER = /(?<min>\d+)-(?<max>\d+) (?<char>\w): (?<password>\w+)/.freeze

    def part_one
      lines.count do |line|
        line[:password].count(line[:char]).between?(line[:min].to_i, line[:max].to_i)
      end
    end

    def part_two
      lines.count do |line|
        min_char(line) ^ max_char(line)
      end
    end

    private

    def min_char(line)
      line[:password][line[:min].to_i - 1] == line[:char]
    end

    def max_char(line)
      line[:password][line[:max].to_i - 1] == line[:char]
    end

    def lines
      input.split("\n").map { |line| line.match(MATCHER) }
    end
  end
end
