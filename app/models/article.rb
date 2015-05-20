class Article < ActiveRecord::Base
  has_many :comments, dependent: :delete
  attr_accessible :text, :title
  validates :title, :text, presence: true, length: { minimum: 5 }
end
