class Message < ActiveRecord::Base
  belongs_to :user

  scope :unread, -> { where(read: false) }
  scope :by_created_at, -> { order("created_at desc") }

  validates :content, presence: true
  validates :user, presence: true

  def read!
    update_attribute(:read, true)
  end
end
