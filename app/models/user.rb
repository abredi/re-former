class User < ApplicationRecord
  validates :username, presence: true, length: { in: 2..255 }
  validates :email, presence: true, email: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..48 }, confirmation: { case_sensitive: false }
  validates :password_confirmation, presence: true, on: :create
end
