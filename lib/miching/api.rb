class API

    def self.get_songs(genre)
    url = "https://api.openopus.org/work/list/composer/87/#{genre}.json"
        uri = URI(url)
        response = Net::HTTP.get(uri) 
        hash = JSON.parse(response) 
        song = hash["works"].sample["title"]
        Song.new(song)
    end

end

##
 