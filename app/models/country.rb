class Country < ApplicationRecord
    validates_presence_of :name
    def matches
        Match.matches(self.id)        
    end
end
