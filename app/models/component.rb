class Component < ActiveRecord::Base

	has_many :ingredients
	has_many :nutrients
	has_many :references

end
