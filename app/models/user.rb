class User < ApplicationRecord
  belongs_to :organization
  has_many :queries

  enum role: { member: 0, admin: 1 }
  

end
