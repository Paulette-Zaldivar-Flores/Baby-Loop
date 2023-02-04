class Request < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  enum :status, { pending: 0, accepted: 1, rejected: 2 }
  validates :end_date, presence: true
  validates :start_date, presence: true
end
