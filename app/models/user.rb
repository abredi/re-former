class User < ApplicationRecord
  validates :username, presence: { message: 'Username invalid' }, length: { in: 2..255 }
  validates :email, presence: true, email: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }, confirmation: { case_sensitive: false }
  validates :password_confirmation, presence: true, on: :create
end
