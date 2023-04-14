class PostSubscriberJob < ApplicationJob
  prepend RailsEventStore::AsyncHandler

  queue_as 'test'

  def perform(event)
    puts event.data
  end
end
