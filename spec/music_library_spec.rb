require "music_library"

RSpec.describe Musiclibrary do
    context "initially" do
        it "is empty" do
            music_library = Musiclibrary.new 
            expect(music_library.all).to eq []
        end 
    end 

    it "responds to search with an empty list" do
        music_library = Musiclibrary.new 
        expect(music_library.search_by_title("fred")).to eq []
    end 
end 
