require 'spec_helper'

describe 'EquilibriumIndex' do
  before do
    @ei = EquilibriumIndex.new
  end

  context '#find_equilibrium_index' do
    it 'should find equilibrium index for array containing a single nil' do
      sample_array = [nil]
      expected_output = @ei.find_equilibrium_index(sample_array)
      expect(expected_output).to be_nil
    end
  end
end
