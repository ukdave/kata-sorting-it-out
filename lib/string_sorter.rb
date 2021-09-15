# frozen_string_literal: true

require "rack"

class StringSorter
  def self.sort str
    letters = str.downcase.gsub(/[^a-z]/, "")
    rack = letters.each_char.with_object(Rack.new) do |letter, rack|
      rack.add(letter.ord)
    end
    rack.balls.map(&:chr).join
  end
end
