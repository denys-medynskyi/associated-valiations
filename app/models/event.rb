class Event < ApplicationRecord
  has_many :event_categories
  has_many :categories, through: :event_categories

  validates_associated :categories
end
