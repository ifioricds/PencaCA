require "administrate/base_dashboard"

class MatchDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    country_1: Field::BelongsTo.with_options(class_name: "Country"),
    country_2: Field::BelongsTo.with_options(class_name: "Country"),
    id: Field::Number,
    date: Field::DateTime,
    score_1: Field::Number,
    score_2: Field::Number,
    phase: Field::String,
    group: Field::String,
    country_1_id: Field::Number,
    country_2_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :country_1,
    :score_1,
    :score_2,
    :country_2,
    :date,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :country_1,
    :country_2,
    :id,
    :date,
    :score_1,
    :score_2,
    :phase,
    :group,
    :country_1_id,
    :country_2_id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :country_1,
    :country_2,
    :date,
    :score_1,
    :score_2,
    :phase,
    :group,
    :country_1_id,
    :country_2_id,
  ].freeze

  # Overwrite this method to customize how matches are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(match)
  #   "Match ##{match.id}"
  # end
end
