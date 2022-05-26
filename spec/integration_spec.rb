require "music_library"
require "track"

RSpec.describe "integration" do
    context "when we add a track to the library" do
        it "it comes back in the list" do
            music_library = Musiclibrary.new 
            track1 = Track.new("my_title_1", "my_artist_1")
            track2 = Track.new("my_title_2", "my_artist_2")
            music_library.add(track1)
            music_library.add(track2)
            expect(music_library.all).to eq [track1, track2]
        end 

        context "with some tracks added" do 
            it "searches for those tracks by full title" do 
                music_library = Musiclibrary.new 
                track1 = Track.new("my_title_1", "my_artist_1")
                track2 = Track.new("my_title_2", "my_artist_2")
                music_library.add(track1)
                music_library.add(track2)
                result = music_library.search_by_title("my_title_2")
                expect(result).to eq [track2]
            end 

            it "searches for those tracks by partial title" do 
                music_library = Musiclibrary.new 
                track1 = Track.new("my_title_1", "my_artist_2")
                track2 = Track.new("my_title_2", "my_artist_2")
                music_library.add(track1)
                music_library.add(track2)
                result = music_library.search_by_title("my_title_2")
                expect(result).to eq [track2]
            end 

            it "when the track does not exist it puts out an emopty list" do 
                music_library = Musiclibrary.new 
                track1 = Track.new("my_title_1", "my_artist_2")
                track2 = Track.new("my_title_2", "my_artist_2")
                music_library.add(track1)
                music_library.add(track2)
                result = music_library.search_by_title("fred")
                expect(result).to eq []
            end 

        end 
    end 
end 