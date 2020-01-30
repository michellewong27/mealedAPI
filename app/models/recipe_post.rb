class RecipePost < ApplicationRecord
    validates :name, :ingredients, :instructions, :url, :cookTime, :servingSize, presence: true
    belongs_to :user, optional: true
end
