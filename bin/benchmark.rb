#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)

require "benchmark"
require "string_sorter"

input = <<~EOF
  When not studying nuclear physics, Bambi likes to play
  beach volleyball.
EOF
n = 10_000

Benchmark.bm(12) do |x|
  x.report("StringSorter:") do
    n.times { StringSorter.sort(input) }
  end
  x.report("sort:") do
    n.times { input.downcase.gsub(/[^a-z]/, "").chars.sort.join }
  end
end
