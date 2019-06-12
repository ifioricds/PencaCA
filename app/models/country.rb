class Country < ApplicationRecord
    def matches
        Match.where("country_1_id = ? OR country_2_id = ?", self.id, self.id)
    end
end
