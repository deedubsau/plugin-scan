require 'spec_helper'

describe Hit do
  before do
    subject.br = 'chrome'
    subject.os = 'linux'
  end

  describe "#to_hash" do
    it "returns the fields that have values as a hash" do
      expect(subject.to_hash.keys).to eq([ :_id, :os, :br ])
      expect(subject.to_hash).to include({ :os=>"linux", :br=>"chrome" })
    end
  end
end
