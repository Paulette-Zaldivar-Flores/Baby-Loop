class Offer < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
end
