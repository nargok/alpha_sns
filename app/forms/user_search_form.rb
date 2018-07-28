class UserSearchForm
  include ActiveModel::Model

  validates :name, presence: true

  attr_accessor :name
end