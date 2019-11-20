class BubbleTea < ActiveRecord::Base

    belongs_to :user
    has_many :bubble_tea_ingredients
    has_many :ingredients, through: :bubble_tea_ingredients
    validates :name, :flavor, presence: true

    def has_ingredients?
        self.ingredients.any?
    end

end

