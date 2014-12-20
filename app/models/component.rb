class Component < ActiveRecord::Base

	belongs_to :foodproduct

	has_many :ingredients
	has_many :references

	accepts_nested_attributes_for :ingredients

end
