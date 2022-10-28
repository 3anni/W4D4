class Towers

  attr_reader :stacks

  def initialize
    @stacks = Array.new(3) {Array.new}
    fill_stacks
  end

  def fill_stacks
    @stacks[0] = 3.downto(1).to_a
  end

  def render
    @stacks.each do |row|
      puts row.join(" ")
    end
  end

  def get_move
    puts "select a stack to get a ring from and where to move it, for example '0 1"
    input = gets.chomp.split.map(&:to_i)
  end

  def move(arr)
    beg_stack, end_stack = @stacks[arr[0]], @stacks[arr[1]]

    if beg_stack.empty?
      raise RuntimeError.new("stack empty - cannot move from here")
    elsif end_stack.empty? || beg_stack[-1] < end_stack[-1]
      end_stack << beg_stack.pop
    else
      raise RuntimeError.new('cannot move larger disc onto smaller disc')
    end
  end

  def won?
    @stacks[0].empty? && @stacks[1].empty?
  end

  def play
    until won?
      move(get_move)
      render
    end
  end
end
