class User < ApplicationRecord
  authenticates_with_sorcery!
  # TODO usersテーブルに外部キーの設定を追加する
  # has_many :statuses, depentent: :destory
  has_many :comments, dependent: :destroy
  has_many :likes
  has_many :statuses, through: :likes
  has_many :friendships
  has_many :friends, through: :friendships

  validates :password, length: { minimum: 8 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, uniqueness: true
  validates :name, presence: true

  paginates_per 5

  scope :all_except, -> (user) { where.not(id: user) }

  def self.search(string)
    where("name like'%" + string + "%'")
  end

end
