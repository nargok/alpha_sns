class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :comments, dependent: :destroy

  validates :password, length: { minimum: 8 }, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :name, presence: true
end
