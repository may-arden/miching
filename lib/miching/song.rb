class Song
    attr_accessor :title, :genre, :saved 

    @@all = []

    def initialize(title, genre, saved = false)
        @title = title
        @genre = genre
        @@all << selfchamber
    end 

    def self.all
        @@all
    end 

    def self.find_by_genre(genre)
        @@all.select { |s| s.genre == genre }
    end 

    def self.find_saved
        @@all.select { |s| s.saved }
    end 

    def self.find_unsaved(array)
        array.select { |s| !s.saved }
    end 

    def self.provide_title(user_response)
        song = find_unsaved(find_by_genre(user_response)).sample
        song.saved = true 
        song.title.downcase 
    end  

end