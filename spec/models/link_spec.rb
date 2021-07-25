require 'rails_helper'

RSpec.describe Link, :type => :model do
  it "is invalid without required attributes" do
    expect(Link.new).to_not be_valid
  end

  it "is not valid with wrong format URL" do
    expect(Link.new(:long_url => "htt://test.com")).to_not be_valid
  end

  it "is not valid with wrong format URL" do
    expect(Link.new(:long_url => "test.com")).to_not be_valid
  end

  it "is not valid with wrong format URL" do
    expect(Link.new(:long_url => "www.test.com")).to_not be_valid
  end

  it "is valid with good format URL" do
    expect(Link.new(:long_url => "https://www.test.com")).to be_valid
  end

  it "is valid with good format URL" do
    expect(Link.new(:long_url => "https://www.test.com")).to be_valid
  end

  it "is valid with good format URL" do
    expect(Link.new(:long_url => "http://www.test.com")).to be_valid
  end

  it "is valid with good format URL" do
    expect(Link.new(:long_url => "https://test.com")).to be_valid
  end

  it "is valid with good format URL" do
    expect(Link.new(:long_url => "http://test.com")).to be_valid
  end

  it "save a new instance with a short url" do
    link = Link.create(long_url: "https://relishapp.com/rspec/rspec-rails/v/5-0/docs/feature-specs/feature-spec")
    expect(link.short_url.length).to eq (7)
  end
end
