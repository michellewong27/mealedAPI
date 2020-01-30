class Favorite < ApplicationRecord
    validates :userId, :postId, presence: true
    belongs_to :user
    belongs_to :recipe_post
end
