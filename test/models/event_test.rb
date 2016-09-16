require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test 'validates event categories' do
    cagegory = Category.create
    event = Event.new(category_ids: [cagegory.id])
    event.save
    assert event.update(category_ids: []), false
  end

  test 'does not delete event categories when empty array is assigned' do
    cagegory = Category.create
    event = Event.new(category_ids: [cagegory.id])
    event.categories = []
    assert event.categories.empty?, true
  end
end
