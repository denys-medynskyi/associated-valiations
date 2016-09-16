class Event < ApplicationRecord
  has_many :event_categories, inverse_of: :event
  has_many :categories, through: :event_categories

  validates_associated :categories
end
