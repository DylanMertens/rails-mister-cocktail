class Dose < ApplicationRecord
  validates_associated :ingredient, presence: true
  validates_associated :cocktail, presence: true
  validates :description, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail }
  belongs_to :cocktail
  belongs_to :ingredient
end
