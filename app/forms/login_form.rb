class LoginForm
  include ActiveModel::Model

  validates :email, :password, presence: true

  attr_accessor :email, :password
end