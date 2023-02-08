class Song < ActiveRecord::Base
   has_many :performances
   has_many :karaoke_singers, through: :performances

   def self.find_by_artist(name)
    self.where(artist_name: name)
   end

   def number_of_times_sung
    self.performances.count
   end

end
