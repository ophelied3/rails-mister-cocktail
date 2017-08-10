class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, :uniqueness => { :scope => :ingredient, presence: true }, presence: true
  # tester si leur présence est bien obligatoire
end
