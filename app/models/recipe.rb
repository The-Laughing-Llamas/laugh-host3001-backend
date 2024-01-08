class Recipe < ApplicationRecord
    belongs_to :user
    validates :title, :ingredients, :instructions, :image, presence: true
    validates :ingredients, :instructions, :image, length: { minimum:10 }
    validates :title, length: { minimum:5 }
end
