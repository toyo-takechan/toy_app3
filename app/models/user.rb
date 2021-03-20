class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 50 }, uniqueness: true
end
