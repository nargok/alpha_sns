class Like < ApplicationRecord
  belongs_to :status
  belongs_to :user

  validates :status_id, uniqueness: { scope: [:user_id] }
end
