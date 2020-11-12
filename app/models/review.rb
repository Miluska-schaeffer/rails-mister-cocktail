class Review < ApplicationRecord
  belongs_to :cocktail

  validates :content, presence: true
  validates :rating, presence: true
  validates_numericality_of :rating, only_integer: true
  validates_inclusion_of :rating, { in: (0..5) }
  validates_format_of :content, with: /^[A-Za-z0-9'\.,&@:;?!()$#' ']+$/ , message: "only allows letters"

end
