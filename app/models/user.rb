class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :password, length: { minimum: 8 }, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
end
