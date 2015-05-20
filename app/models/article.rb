class Article < ActiveRecord::Base
  has_many :comments
  attr_accessible :text, :title
  validates :title, :text, presence: true, length: { minimum: 5 }
end
