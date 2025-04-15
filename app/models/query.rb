class Query < ApplicationRecord
  belongs_to :user
  belongs_to :organization


  enum status: {pending: 0, complete: 1, failed: 2, processing: 3}
  
end
