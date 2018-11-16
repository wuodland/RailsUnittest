class Car < ApplicationRecord
  belongs_to :user
  enum status: [:active,:fulfilled, :in_queue]

end
