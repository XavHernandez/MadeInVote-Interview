require 'rails_helper'
require_relative '../../binary/binary'

describe '#binary_space' do
  it 'should output 1 for N = 5' do
    p "Binary for 5 is #{5.to_s(2)}"
    expect(binary_space(5)).to eq 1
  end

  it 'should output 0 for N = 6' do
    p "Binary for 6 is #{6.to_s(2)}"
    expect(binary_space(6)).to eq 0

  end

  it 'should output 1 for N = 22' do
    p "Binary for 22 is #{22.to_s(2)}"
    expect(binary_space(22)).to eq 1
  end

  it 'should output 0 for N = 8' do
    p "Binary for 8 is #{8.to_s(2)}"
    expect(binary_space(8)).to eq 0
  end

  it 'should output 0 for N = 1' do
    p "Binary for 1 is #{1.to_s(2)}"
    expect(binary_space(1)).to eq 0
  end

  it 'should output 3 for N = 1 454 679 143' do
    p "Binary for 1 454 679 143 is #{1_454_679_143.to_s(2)}"
    expect(binary_space(1_454_679_143)).to eq 3
  end

  it 'should output 0 for N = 2 147 483 647' do
    p "Binary for 2 147 483 647 is #{2_147_483_647.to_s(2)}"
    expect(binary_space(2_147_483_647)).to eq 0
  end

  it 'should output 0 for N = 2 147 500 000' do
    p "Binary for 2 147 500 000 is #{2_147_500_000.to_s(2)}"
    expect(binary_space(2_147_500_000)).to eq 0
  end

  it 'should output 0 for N = -1' do
    p "Binary for -1 is #{-1.to_s(2)}"
    expect(binary_space(-1)).to eq 0
  end

  it 'should output 0 for N = -2' do
    p "Binary for -2 is #{-2.to_s(2)}"
    expect(binary_space(-2)).to eq 0
  end

  it 'should output 6 for N = 129' do
    p "Binary for 129 is #{129.to_s(2)}"
    expect(binary_space(129)).to eq 6
  end

  it 'should output 7 for N = 257' do
    p "Binary for 257 is #{257.to_s(2)}"
    expect(binary_space(257)).to eq 7
  end
end
