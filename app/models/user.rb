class User < ApplicationRecord
  has_many :received_messages, :class_name => 'Message', :foreign_key => 'to_id'
  has_many :sent_messages, :class_name => 'Message', :foreign_key => 'from_id'

  def get_messages(from_user_id)
    (sent_messages.where(to_id: from_user_id) + received_messages.where(from_id: from_user_id)).sort_by {|m| m[:created_at]}
  end
end
