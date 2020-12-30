# frozen_string_literal: true

require './lib/2020/03/solution.rb'
RSpec.describe 'Day 3: Toboggan Trajectory' do
  let(:solution) { Day03::Solution.new('2020/03') }
  let(:input) do
    <<~TXT
      ..##.......
      #...#...#..
      .#....#..#.
      ..#.#...#.#
      .#...##..#.
      ..#.##.....
      .#.#.#....#
      .#........#
      #.##...#...
      #...##....#
      .#..#...#.#
    TXT
  end

  before do
    allow(solution).to receive(:input) { input }
  end

  describe 'Part One' do
    it 'when counting trees' do
      expect(solution.part_one).to eq(7)
    end
  end

  describe 'Part Two' do
    it 'when counting multiplied trees' do
      expect(solution.part_two).to eq(336)
    end
  end
end
