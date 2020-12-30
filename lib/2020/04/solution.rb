# frozen_string_literal: true

require_relative '../../base_solution'

module Day04
  class Solution < BaseSolution
    REQUIRED_FIELDS = %w[byr iyr eyr hgt hcl ecl pid].freeze
    RULES = {
      byr: 1920..2002,
      iyr: 2010..2020,
      eyr: 2020..2040,
      hgt: /1([5-8]\d|9[0-3])cm|(59|6\d|7[0-6])in/,
      hcl: /#[0-9a-f]{6}/,
      ecl: /(amb|blu|brn|gry|grn|hzl|oth)/,
      pid: /\d{9}/
    }.transform_keys(&:to_s)

    def part_one
      passports.count { |passport| required_fields?(passport) }
    end

    def part_two
      passports.count { |passport| valid?(passport) }
    end

    private

    def passports
      input.split("\n\n")
    end

    def required_fields?(passport)
      REQUIRED_FIELDS.all? { |field| passport.match?(/#{field}:\S+/) }
    end

    def valid?(passport)
      fields = Hash[passport.split(/\s/).map { |field| field.split(':') }]

      RULES.all? do |k, v|
        field = fields[k]

        next unless field

        v.is_a?(Regexp) ? field.match?(/\A#{v}\z/) : v.cover?(field.to_i)
      end
    end
  end
end
