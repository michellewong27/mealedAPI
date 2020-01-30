class RecipePost < ApplicationRecord
    validates :name, :ingredients, :instructions, :url, presence: true
    validates :name, uniqueness: true
    belongs_to :user, optional: true
end
