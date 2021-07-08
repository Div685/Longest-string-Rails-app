class User < ApplicationRecord
  has_secure_password
  validates :uname, presence: true, length: { minimum: 3, maximum: 16 }
  # validates :uname, uniqueness: true
  validates_uniqueness_of :uname

  validates :password, presence: true, length: { minimum: 8 }
end
