class Match < ApplicationRecord
    belongs_to :country_1, :class_name => 'Country'
    belongs_to :country_2, :class_name => 'Country'
end
