class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :content, presence: true

  Created = Class.new(RailsEventStore::Event)

  after_create :publish_created_event

  private

  def publish_created_event
    Rails.configuration.event_store
         .publish(
           Created.new(data: { post_id: id }), stream_name: "post-#{id}"
         )
  end
end
