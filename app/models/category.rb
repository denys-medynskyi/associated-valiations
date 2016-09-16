class Category < ApplicationRecord
  has_many :event_categories, inverse_of: :category
  has_many :events, through: :event_categories
end
