class Foodproduct < ActiveRecord::Base

	has_many :components
	has_many :ingredients
	has_many :nutrients
	
end
