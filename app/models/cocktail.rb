class Cocktail < ApplicationRecord
  belongs_to :dose
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :ingredients, through: :doses, dependent: :destroy
  has_many :doses, dependent: :destroy
end
