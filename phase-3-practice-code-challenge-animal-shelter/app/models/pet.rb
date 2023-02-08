class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter

    def self.oldest
        self.all.max_by {|pet| pet.age_in_years}
    end

    def self.average_age
        self.all.average(:age_in_years).round(2).to_f
    end

    def in_dog_years
        if species == "dog"
            self.age_in_years * 5
        end
    end
    
end
