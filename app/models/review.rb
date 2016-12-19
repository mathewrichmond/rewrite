class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :document
  has_many :comments
  has_many :deletions
  has_many :insertions
end
