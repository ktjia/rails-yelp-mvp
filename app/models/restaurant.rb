class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category,
            inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"] },
presence: true
end
