class Foodproduct < ActiveRecord::Base

	has_many :components
	has_many :ingredients
	has_many :nutrients
	has_one :company

	accepts_nested_attributes_for :components, :company, :ingredients, :nutrients
	
end
