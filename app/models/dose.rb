class Dose < ActiveRecord::Base
  validates :description, presence: true
  belongs_to :ingredient
  belongs_to :cocktail
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id
end
