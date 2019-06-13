class Country < ApplicationRecord
    def matches
        Match.matches(self.id)        
    end
end
