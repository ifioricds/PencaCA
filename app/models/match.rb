class Match < ApplicationRecord
    belongs_to :country_1, :class_name => 'Country', :foreign_key => "country_1_id"
    belongs_to :country_2, :class_name => 'Country', :foreign_key => "country_2_id"

    scope :matches, -> (id) { where "country_1_id = ? OR country_2_id = ?", id, id }
end
