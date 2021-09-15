# frozen_string_literal: true

require "string_sorter"

describe StringSorter do
  describe ".sort" do
    it "sorts strings" do
      input = <<~EOF
        When not studying nuclear physics, Bambi likes to play
        beach volleyball.
      EOF
      expected = "aaaaabbbbcccdeeeeeghhhiiiiklllllllmnnnnooopprsssstttuuvwyyyy"
      expect(described_class.sort(input)).to eq expected
    end
  end
end
