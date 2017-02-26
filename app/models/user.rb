class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, foreign_key: 'receiver_id', class_name: 'Message'

  scope :all_except, ->(user) { where.not(id: user) }

  def messages_sender_distinct_receivers
    messages = []
    messages << self.sent_messages.first
    self.sent_messages.each do |message|
      messages.each do |dt|
        if dt.receiver_id != message.receiver_id
          messages << message
        end
      end
    end
    p messages
    return messages
  end

end
