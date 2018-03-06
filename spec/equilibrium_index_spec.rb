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

    it 'should find equilibrium index for a given array' do
      sample_array = [-7, 1, 5, 2, -4, 3, 0]
      expected_output = @ei.find_equilibrium_index(sample_array)
      expect(expected_output).to be 3
    end

    it 'should find equilibrium index for a given array with symmetrically values' do
      sample_array = [1, 2, 3, 4, 3, 2, 1]
      expected_output = @ei.find_equilibrium_index(sample_array)
      expect(expected_output).to be 3
    end

    it 'should find equilibrium index for a given array with first value is the sum of all the rest' do
      sample_array = [99, 0, 66, 32, 1]
      expected_output = @ei.find_equilibrium_index(sample_array)
      expect(expected_output).to be 1
    end

    it 'should find equilibrium index for a given array with last value is the sum of all the left' do
      sample_array = [66, 32, 1, 0, 99]
      expected_output = @ei.find_equilibrium_index(sample_array)
      expect(expected_output).to be 3
    end

    it 'should find equilibrium index for a given array with single element' do
      sample_array = [0]
      expected_output = @ei.find_equilibrium_index(sample_array)
      expect(expected_output).to be_nil
    end
  end
end
