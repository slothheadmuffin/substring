require 'spec_helper'
require_relative '../substring'

RSpec.describe'Find_substring' do
  describe 'finds one' do
    it'outputs a hash with the value being number of times it appears and the key the word' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(find_word("lower",dictionary)).to eq({ "low" => 1})
    end
  end

  describe 'finds all' do
    it'outputs a hash with the value being number of times it appears and the key the word' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(find_word("Howdy partner, sit down! How's it going?",dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
    end
  end

  describe 'finds none' do
    it'outputs nothing' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(find_word("bazonga",dictionary)).to eq({})
    end
  end
end