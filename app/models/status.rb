class Status < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes
  has_many :users, through: :likes
  belongs_to :user
  validates :body, presence: true

  paginates_per 5
end
