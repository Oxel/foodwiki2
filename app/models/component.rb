class Component < ActiveRecord::Base

	belongs_to :foodproducts

	has_many :ingredients
	has_many :nutrients
	has_many :references

	has_one :company

	accepts_nested_attributes_for :ingredients, :company, :nutrients

end
