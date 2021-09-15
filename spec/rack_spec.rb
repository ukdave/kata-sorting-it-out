# frozen_string_literal: true

require "rack"

describe Rack do
  it "sorts balls as they are added" do
    expect(subject.balls).to eq []

    subject.add(20)
    expect(subject.balls).to eq [20]

    subject.add(10)
    expect(subject.balls).to eq [10, 20]

    subject.add(30)
    expect(subject.balls).to eq [10, 20, 30]
  end
end
