class Ingredient < ActiveRecord::Base



	accepts_nested_attributes_for :nutrients
	
end
