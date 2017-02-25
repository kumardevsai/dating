class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  def read?
    !read_at.nil?
  end

  def mask_as_read
    self.read_at = time.Now
  end
end
