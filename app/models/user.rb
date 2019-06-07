class User < ApplicationRecord
  has_secure_password
  has_many :owning_users, foreign_key: :owner_id, class_name: 'Link'
  has_many :owners, through: :owning_users
  has_many :borrowing_users, foreign_key: :borrower_id, class_name: 'Link'
  has_many :borrowers, through: :borrowing_users

end
