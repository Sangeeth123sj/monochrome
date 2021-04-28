class Article < ApplicationRecord
  belongs_to :user
  validates :title, :subtitle, :content, presence: true
  validates :subtitle, length: {maximum: 60}
  validates :title, length: {maximum: 60}
  # scope :list_all_articles, -> { all }
end