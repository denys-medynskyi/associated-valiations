class EventCategory < ApplicationRecord
  belongs_to :event
  belongs_to :category

  validates :event, presence: true
  validates :category, presence: true
end
