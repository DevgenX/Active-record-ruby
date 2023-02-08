puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(company_id: Company.all.sample.id, dev_id: Dev.all.sample.id, item_name: 'Hoodie', value: 120)
Freebie.create(company_id: Company.all.sample.id, dev_id: Dev.all.sample.id, item_name: 'Cap', value: 20)
Freebie.create(company_id: Company.all.sample.id, dev_id: Dev.all.sample.id, item_name: 'Hat', value: 10)
Freebie.create(company_id: Company.all.sample.id, dev_id: Dev.all.sample.id, item_name: 'Lanyard', value: 5)
Freebie.create(company_id: Company.all.sample.id, dev_id: Dev.all.sample.id, item_name: 'Watch', value: 35)

puts "Seeding done!"
