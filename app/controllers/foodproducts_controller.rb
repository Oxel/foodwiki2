class FoodproductsController < ApplicationController

	def index
	end

	def show
		@foodproduct = Foodproduct.find(params[:id])
	end

	def edit
		@foodproduct = Foodproduct.find(params[:id])
	end

	def new
		@foodproduct = Foodproduct.new
		@foodproducts.components.build
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

  def update
    @foodproduct = Foodproduct.find(params[:id])
    if @foodproduct.update_attributes(foodproduct_params)
      redirect_to @foodproduct
    else
      flash[:error] = "Error saving. Please try again."
      render :edit
    end
  end

  private

  def foodproduct_params
  	params.require(:foodproduct).permit(:food_name, :foodproduct_id, components_attributes: [:component_name, :foodproduct_id])
	end

end