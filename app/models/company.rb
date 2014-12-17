class Company < ActiveRecord::Base

	has_many :foodproducts
	has_many :components
	
end
