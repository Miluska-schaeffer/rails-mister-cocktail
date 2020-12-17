class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  has_one_attached :photo

  CATEGORY =  ["Aromatic","Old Fashioned","Sour", "Highball", "Festive", "Non Alcoholic" ]


  validates :name, presence: true, uniqueness: true, length: { in: 3..40 }
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "Not a valid category" }
  validates :content, presence: true, length: { in: 15..100 }
end
