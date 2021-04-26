class Article < ApplicationRecord
  belongs_to :user
  validates :title, :subtitle, :content, presence: true
end