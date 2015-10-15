class Review < ActiveRecord::Base
  belongs_to :novel

  validates :user_name, :presence =>true
  validates :description, :presence =>true
end
