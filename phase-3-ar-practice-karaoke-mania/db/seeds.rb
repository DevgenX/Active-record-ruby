puts "Creating seeds..."

KaraokeSinger.destroy_all
Song.destroy_all
Performance.destroy_all

num_of_drinks = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
KaraokeSinger.create(name: "Alice", number_of_drinks: num_of_drinks.sample)
KaraokeSinger.create(name: "Bob", number_of_drinks: num_of_drinks.sample)
KaraokeSinger.create(name: "Chris", number_of_drinks: num_of_drinks.sample)

Song.create(title: "Like A Virgin", runtime_in_minutes: 2, artist_name: "Madonna")
Song.create(title: "It's About Damn Time", runtime_in_minutes: 4, artist_name: "Lizo")
Song.create(title: "WAP", runtime_in_minutes: 69, artist_name: "Cardi B")

10.times do
    Performance.create(karaoke_singer_id: KaraokeSinger.all.sample.id, song_id: Song.all.sample.id)
end

puts "Seeding completed!"