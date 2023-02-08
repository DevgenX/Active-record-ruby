class KaraokeSinger < ActiveRecord::Base
    has_many :performances
    has_many :songs, through: :performances

    def sing(song)  
       Performance.create(karaoke_singer_id: self.id, song_id: song.id)
    end
    
    def buy_drink
        self.update(number_of_drinks: self.number_of_drinks + 1)
    end

    def songs_by_artist(artist)
        self.songs.where(artist_name: artist)
    end

    ## returns the tab of a singer
    def drinks_tab(price_per_drink)
        self.number_of_drinks * price_per_drink
    end
    # returns the total for every Singer
    def self.total_tab(price_per_drink)
        self.all.sum { |singer| singer.drinks_tab(price_per_drink)}
    end
end
