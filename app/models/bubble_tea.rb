class BubbleTea < ActiveRecord::Base

belongs_to :user
has_many :bubble_tea_ingredients
has_many :ingredients, through: :bubble_tea_ingredients


end

