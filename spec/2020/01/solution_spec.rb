# frozen_string_literal: true

require './lib/2020/01/solution.rb'
RSpec.describe 'Day 1: Report Repair' do
  let(:solution) { Day01::Solution.new('2020/01') }
  let(:input) do
    <<~TXT
      1721
      979
      366
      299
      675
      1456
    TXT
  end

  before do
    allow(solution).to receive(:input) { input }
  end

  describe 'Part One' do
    it 'when two entries sum 2020' do
      expect(solution.part_one).to eq(514_579)
    end
  end

  describe 'Part Two' do
    it 'when three entries that sum 2020' do
      expect(solution.part_two).to eq(241_861_950)
    end
  end
end
