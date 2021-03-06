require "rspec"
require_relative "../app/models/pet"

RSpec.describe Pet, :name, :type => :model do
  subject { described_class.new("Clive", "Dog") }

  it "checks the name is not empty" do
    expect(subject.name).not_to be_empty
  end

  it "checks the name contains a vowel" do
    expect(subject.name.to_s).to include("a").or(include("e")).or(include("i")).or(include("o")).or(include("u"))
  end

  it "checks the type is 'Dog'" do
    expect(subject.type.to_s).to eq("Dog")
  end

end
