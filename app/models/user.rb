class User < ApplicationRecord
  validates :username, presence: true, length: {in 6..20}, uniqueness: true
  validates :email, presence: true, email: true, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
