class User < ApplicationRecord
  has_many :events, :foreign_key => :creator_id
  has_many :event_managers, foreign_key: :
  has_many :attended_events, through: :event




  has_many :post_authorings, foreign_key: :post_author_id
  has_many :authored_posts, through: :post_authorings
  has_many :edited_posts, foreign_key: :editor_id, class_name: "Post"
end
