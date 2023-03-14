class User < ApplicationRecord
  
  validates :user_id, :user_name,  :user_role, :contact, :password , presence: true
  validates :user_email , presence: true ,format: {with: /\A[^@\s]+@[^@\s]+\z/}  
  
end
