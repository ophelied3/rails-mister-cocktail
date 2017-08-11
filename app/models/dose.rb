class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient_id, presence: true
  validates :description, presence: true
  validates :cocktail, :uniqueness => { :scope => :ingredient }, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
end
