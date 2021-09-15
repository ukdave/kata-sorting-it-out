# frozen_string_literal: true

class Rack
  attr_reader :balls

  def initialize
    @balls = []
  end

  def add num
    index = @balls.find_index {|ball| num < ball }
    if index
      @balls.insert(index, num)
    else
      @balls << num
    end
  end
end
