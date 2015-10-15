class Novel < ActiveRecord::Base
  has_many :reviews

  validates :author, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true
end
