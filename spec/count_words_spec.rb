# A method called count_words that takes a string as an argument and returns the number of 
# words in that string.

require "count_words"

RSpec.describe "count_words method" do
    context "given and empty string"
    it "takes a string and returns a zero" do
        result = count_words ("")
        expect(result).to eq 0
    end 

    context "given an string with words"
    it "takes a string and returns the number of words in the string" do
        result = count_words("my name is lion")
        expect(result).to eq 4
    end 
end 

