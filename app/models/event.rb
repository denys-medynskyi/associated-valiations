class Event < ApplicationRecord
  has_many :event_categories, inverse_of: :event
  has_many :categories, through: :event_categories

  validate :event_categories_presence

  private

  def event_categories_presence
  	if categories.empty?
  		errors.add(:categories, "needs categories")
  	end	
  end	
end
