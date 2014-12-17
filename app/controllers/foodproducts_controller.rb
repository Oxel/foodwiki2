class FoodproductsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@foodproduct = Foodproduct.new
	end

	def create
    @foodproduct = Foodproduct.new
    if @foodproduct.save
      flash[:success] = "Your food has been saved!"
      redirect_to @foodproduct
    else
      render 'new'
    end
  end


end