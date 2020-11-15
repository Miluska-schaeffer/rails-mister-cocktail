class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true, length: { in: 3..20 }

  validates :content, presence: true, length: { in: 15..100 }
end
