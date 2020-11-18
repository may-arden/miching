
class Song
    attr_accessor :song

    @@all = []

    def initialize(song)
        @song = song
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.clear_all
        @@all = []
    end 

    def self.provide_title
        title = @@all.to_s.split(" @song=")
        title.shift
        title_string = title.to_s
        puts title_string.gsub(/\W/, ' ').downcase
    end  

end

