Pet.destroy_all
Shelter.destroy_all
Adopter.destroy_all


Shelter.create(name: "WE LOVE KITTIES", address: "5102 Overhill Drive")
Shelter.create(name: "FUR BABY", address: "Tweede Jan van der Heijdenstraat 64")
Shelter.create(name: "ADOPTION FEVER", address: "11 Broadway")

5.times do 
    Adopter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end


5.times do 
    Pet.create(name: Faker::Name.name, age_in_years: 2, species: "Golden", adopted: false, shelter_id: Shelter.all.sample.id, adopter_id: Adopter.all.sample.id)
endear
