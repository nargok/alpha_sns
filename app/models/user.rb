class User < ApplicationRecord
  authenticates_with_sorcery!
  # TODO usersテーブルに外部キーの設定を追加する
  # has_many :statuses, depentent: :destory
  has_many :comments, dependent: :destroy

  validates :password, length: { minimum: 8 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, uniqueness: true
  validates :name, presence: true
end
