class Relationship < ApplicationRecord
  def self.are_friend(user1, user2) 
    where("user_one_id = ? AND user_two_id = ?", user1, user2).or(Relationship.where("user_two_id = ? AND user_one_id = ?",user1,user2)).present?
  end
end
