class User < ActiveRecord::Base
  has_many :documents
  has_many :reviews
  validates :name
end
