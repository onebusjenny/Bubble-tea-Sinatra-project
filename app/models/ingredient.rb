class Ingredient < ActiveRecord::Base

    has_many :bubble_tea_ingredients
    belongs_to :bubble_tea
    validates :name, presence: true
end
