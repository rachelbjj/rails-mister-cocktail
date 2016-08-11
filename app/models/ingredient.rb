class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  belongs_to :cocktail, through: :doses, dependent: :destroy
end
