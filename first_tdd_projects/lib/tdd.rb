    def remove_dups(arr)
        #arr.uniq
         arr_uniq = []

         arr.each do |el|
           arr_uniq << el unless arr_uniq.include?(el)
         end

         arr_uniq
    end

class Array
    def two_sum
        indices = []
        self.each_with_index do |num1, idx1|
            self.each_with_index do |num2, idx2|
                if num1 + num2 == 0 && idx1 < idx2
                    indices << [idx1, idx2]
                end
            end
        end
        indices
    end

end


def my_transpose(arr)
  new_arr = Array.new(arr[0].length) { Array.new(arr.length) }

  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      new_arr[j][i] = arr[i][j]
    end
  end

  new_arr
end

def stock_picker(arr)
    days = []
    max = 0
    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            if idx2 > idx1 && num2 - num1 > max
                max = num2 - num1
                days << [idx1, idx2]
            end
        end
    end
    days[-1]
end




# describe "Array#my_each" do
#   let(:arr) { [1,2,3] }
#   let(:res) { Array.new }

#   before(:each) do
#     expect(arr).not_to receive(:each)
#     expect(arr).not_to receive(:map)
#     expect(arr).not_to receive(:dup)
#     expect(arr).not_to receive(:slice)
#     expect_any_instance_of(Array).not_to receive(:each_with_index)
#     expect_any_instance_of(Array).not_to receive(:map!)
#   end

#   it "works for blocks" do
#     arr.my_each { |el| res << 2 * el }
#     expect(res).to eq([2,4,6])
#   end

#   it "does not modify original array" do
#     arr.my_each { |el| res << 2 * el }
#     expect(arr).to eq([1,2,3])
#   end

#   it "should return the original array" do
#     return_val = arr.my_each { |el| el }
#     expect(return_val).to eq(arr)
#   end
