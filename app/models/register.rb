class Register < ApplicationRecord
  has_secure_password

  validates :name , presence: true
  validates :email ,format: {with: /[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+/} , presence: true
  
end
# /\A[^@\s]+@[^@\s]+\z/