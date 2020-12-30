# frozen_string_literal: true

require_relative '2020/01/solution'

YEARS = %w[2020].freeze

YEARS.each do |year|
  (1..25).each do |i|
    day = i.to_s.rjust(2, '0')
    date_folder = "#{year}/#{day}"
    solution = Object.const_get("Day#{day}::Solution").new(date_folder)
    puts("*** DATE #{date_folder} ***")
    puts("The solution of part one is #{solution.part_one}")
    puts("The solution of part two is #{solution.part_two}")
  rescue NameError
    puts("*** DATE #{date_folder} is not implemented ***")
  end
end
