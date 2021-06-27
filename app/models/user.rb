class User < ApplicationRecord
  validates :uname, uniqueness: true, length: { minimum: 3, maximum: 16 }
  validates :password, presence: true, length: { minimum: 8 }
end
