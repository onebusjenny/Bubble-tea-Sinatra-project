class BubbleTeaIngredient < ActiveRecord::Base

    
    belongs_to :bubble_tea
    belongs_to :ingredient

    validates :bubble_tea, :ingredient, presence: true

end
