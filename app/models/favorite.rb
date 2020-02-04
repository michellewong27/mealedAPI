class Favorite < ApplicationRecord
    validates :postId, presence: true
    #validates :userID
    # belongs_to :user
    # belongs_to :recipe_post
end
