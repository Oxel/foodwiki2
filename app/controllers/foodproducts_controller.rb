class FoodproductsController < ApplicationController

	def index
	end

	def show
		
	end

	def new
		@foodproduct = Foodproduct.new
	end

	def create
    @foodproduct = Foodproduct.create(foodproduct_params)
    if @foodproduct.save
      flash[:success] = "Your food has been saved!"
      redirect_to @foodproduct
    else
      render 'new'
    end
  end

  private

  def foodproduct_params
  	params.require(:foodproduct).permit(:foodproduct_name, components_attributes: [:component_name])
	end

end