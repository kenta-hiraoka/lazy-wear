class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :images, dependent: :destroy

  enum feeling: {formal: 0, formal_casual: 1, casual: 2, casual_relux: 3, relux: 4, all: 5}, _prefix: true
end
