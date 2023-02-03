class Offer < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address

  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model

  pg_search_scope :search_by_item_name_and_category_and_address,
    against: %i[item_name category address],
    using: {
      tsearch: { prefix: true } # <-- now `baby cri` will return something!
    }
end
