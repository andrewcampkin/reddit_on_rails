class Vote < ActiveRecord::Base
  validates :user_id, :uniqueness => { :scope => :link_id }
  attr_accessible :up, :user_id, :link_id
  belongs_to :user
  belongs_to :link
end