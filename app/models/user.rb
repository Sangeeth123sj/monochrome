class User < ApplicationRecord
  has_many :articles
  validates :first_name, :last_name, :email, presence: true

end