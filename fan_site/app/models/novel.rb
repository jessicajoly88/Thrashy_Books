class Novel < ActiveRecord::Base
  validates :author, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true
  validates :rating, :presence => true
end
