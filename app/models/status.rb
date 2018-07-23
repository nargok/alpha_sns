class Status < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :body, presence: true
end
