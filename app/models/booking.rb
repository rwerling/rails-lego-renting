class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lego
  has_one :review
end
