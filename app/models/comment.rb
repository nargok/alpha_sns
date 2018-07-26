class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :status
  validates :body, presence: true

  paginates_per 5
end
