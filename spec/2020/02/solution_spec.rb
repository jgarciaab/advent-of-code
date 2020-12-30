# frozen_string_literal: true

require './lib/2020/02/solution.rb'
RSpec.describe 'Day 2: Password Philosophy' do
  let(:solution) { Day02::Solution.new('2020/02') }
  let(:input) do
    <<~TXT
      1-3 a: abcde
      1-3 b: cdefg
      2-9 c: ccccccccc
    TXT
  end

  before do
    allow(solution).to receive(:input) { input }
  end

  describe 'Part One' do
    it 'when two entries sum 2020' do
      expect(solution.part_one).to eq(2)
    end
  end

  describe 'Part Two' do
    it 'when three entries that sum 2020' do
      expect(solution.part_two).to eq(1)
    end
  end
end
