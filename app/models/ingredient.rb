class Ingredient < ActiveRecord::Base

	belongs_to :components
	belongs_to :foodproducts

	accepts_nested_attributes_for :nutrients
	
end
