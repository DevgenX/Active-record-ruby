class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        # self.freebies.any? { |freebie| freebie.item_name == item_name }
        freebies.map { |freebie| freebie.item_name }.include? item_name
    end

    def give_away(freebie, dev)
        freebie.dev == self ? freebie.update(dev: dev) : 'False'
    end
    
end
