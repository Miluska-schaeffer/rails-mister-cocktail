class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews

  validates :name, presence: true, uniqueness: true, length: { in: 3..20 }, format: { with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/,
    message: "only allows letters" }
  validates :content, presence: true, length: { in: 50..150 }
  validates_format_of :content, with: /^[A-Za-z0-9'\.,&@:;?!()$#' ']+$/ , message: "only allows letters"
end
