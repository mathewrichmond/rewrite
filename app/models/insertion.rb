class Insertion < ActiveRecord::Base
  belongs_to :review
  validates :content, presence: true
end
