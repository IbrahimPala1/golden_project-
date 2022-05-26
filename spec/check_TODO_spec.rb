require "check_TODO"

RSpec.describe "check_TODO method" do
    context "given an empty string" do
        it "fails" do
            expect { check_TODO("") }.to raise_error "Not a sentence"
        end 
    end 

    context "given a sentence with TODO" do
        it "returns true" do
            result = check_TODO("TODO")
            expect(result).to eq true 
        end 
    end 


    context "given a sentence without TODO" do
        it "returns false" do
            result = check_TODO("hello coach not sure what that sound was")
            expect(result).to eq false 
        end 
    end 

    context "given a sentence without uppercase TODO" do
        it "returns false" do
            result = check_TODO("i like todo")
            expect(result).to eq false 
        end 
    end 

    context "given a sentence with TODO" do
        it "returns true" do
            result = check_TODO("i like TODO")
            expect(result).to eq true
        end 
    end 
end 


