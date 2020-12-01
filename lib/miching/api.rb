class API

    def self.get_songs(genre)
        url = "https://api.openopus.org/work/list/composer/87/#{genre}.json"
        uri = URI(url)
        response = Net::HTTP.get(uri) 
        parsed_response = JSON.parse(response) 
        parsed_response["works"].each do |hash, key|
         hash.each do |key, value|
          if key == "title"
            Song.new(value, genre) 
          end
         end 
        end   
    end

end