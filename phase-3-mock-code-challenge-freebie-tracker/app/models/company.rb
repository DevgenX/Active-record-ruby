class Company < ActiveRecord::Base
    has_many :freebies
    has_many :dev, through: :freebies

    def print_all_freebie_details
        self.freebies.each { |f| puts f.print_details}
    end

    def average_freebie_value
        self.freebies.all.average(:value).to_f.round(3)
    end

    def give_freebie(dev, item_name, value)
        Freebie.create(company_id: self.id ,dev_id: dev.id, item_name: item_name, value: value,)
    end

    def self.oldest_company
        self.all.min_by { |c| c.founding_year}
    end
end
