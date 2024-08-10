class Reservation < ApplicationRecord
    belongs_to :user, optional: true
    validates :date, presence: true
    validates :note, length: { maximum: 500 }
  end
  