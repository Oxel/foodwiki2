class FoodproductsController < ApplicationController

  before_action :set_foodproduct, only: [:show, :edit, :update, :destroy]
  # before_action :set_company 

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
		@foodproduct.components.build
    @company = @foodproduct.build_company
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
  	params.require(:foodproduct).permit(:food_name, :company_id, :foodproduct_id, components_attributes: [:component_name, :foodproduct_id, :company_id], company_attributes: [:company_name, :foodproduct_id, :company_id])
	end

  def set_foodproduct
    @foodproduct = Foodproduct.find(params[:id])
  end

  # def set_company
  #  @company = Company.find(params[:company_id])
  # end

end