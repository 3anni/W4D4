require 'rspec'
require 'tdd'
require 'towers'

describe '#remove_dups' do
  subject(:arr) { [1,2,1,3,3] }

  before(:each) do
    expect(arr).to_not receive(:uniq)
  end

  it 'creates new array with unique elements' do
      expect(remove_dups(arr)).to eq ([1,2,3])
  end

  it 'does not call #uniq' do
    remove_dups(arr)
    expect(arr).to_not receive(:uniq)
  end

  it 'does not mutate original array' do
    remove_dups(arr)
    expect(arr).to eq([1,2,1,3,3])
  end
end

describe Array do
  subject(:arr) { [-1, 0, 2, -2, 1] }
  describe 'Array#two_sum' do
    context 'finds element that add to zero' do
      it 'returns indices of elements that add to zero in array' do
        expect(arr.two_sum).to eq([[0,4], [2,3]])
      end
    end
  end
end


describe '#my_transpose' do
  subject(:rows) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] }

  subject(:cols) {cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]}

  before(:each) do
    expect(rows).to_not receive(:transpose)
  end

  it 'transposes the array' do
    expect(my_transpose(rows)).to eq(cols)
  end

  it 'does not call #tranpose' do
    my_transpose(rows)
    expect(rows).to_not receive(:transpose)
  end

end


describe '#stock_picker' do
subject(:arr1) { [1, 2, 4, 6, 8] }
subject(:arr2) { [7, 1, 3, 2, 5] }
  context 'you must buy the stock before you sell it' do
    it 'return index of ele in array to buy and sell stock for most profit' do
        expect(stock_picker(arr1)).to eq([0,4])
    end

    it 'the buy index is always lower than the sell index' do
        expect(stock_picker(arr2)).to eq([1, 4])
    end
  end
end


describe Towers do
  subject(:towers) { Towers.new }

  it 'moves disk from one stack to another' do
    towers.move([0,1])
    expect(towers.stacks[0]).to eq ([3,2])
    expect(towers.stacks[1]).to eq ([1])
  end

  it 'doesn\'t move disk onto a stack with smaller disks' do
    towers.move([0,1])
    expect { towers.move([0,1]) }.to raise_error(RuntimeError)
  end

  it 'returns not won when game not over' do
    expect(towers.won?).to eq(false)
  end

  # more?
  it 'returns won when last col is full' do
    towers.move([0,2])
    towers.move([0,1])
    towers.move([2,1])
    towers.move([0,2])
    towers.move([1,0])
    towers.move([1,2])
    towers.move([0,2])
    expect(towers.won?).to eq(true)
  end

end
# arrays have to be sorted, smallest on top, biggest on bottome
[[3, 2, 1],[], [] ]
