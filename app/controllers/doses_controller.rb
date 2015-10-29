class DosesController < ApplicationController
   before_action :set_cocktail, only: [:new, :create, :show, :edit, :update, :destroy]

  def index
    @doses = Dose.all
  end

  def show
  end


  def new
    @dose = Dose.new()

  end

  def create
    @dose = @cocktail.doses.new(doses_params)
    # <=> @dose = Dose.new(doses_params, cocktail: @cocktail)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end


  private
  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end


end
