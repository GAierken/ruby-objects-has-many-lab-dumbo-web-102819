require "pry"
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name 


    end ##initialize


    def songs 
        Song.all.select do |song_instance|
        song_instance.artist == self
        
        end #map
        
    end #songs

    
    
    def add_song(new_song_instance)
        new_song_instance.artist = self

    end #add song

    def add_song_by_name(song_name)
        new_song=Song.new(song_name)
        new_song.artist=self 

    end  ## add by name

    def self.song_count

        Song.all.count


    end ## song_count





end # Artist class