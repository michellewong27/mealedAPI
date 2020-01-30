class User < ApplicationRecord
    validates :name, presence: true
    has_many :recipe_post
end
