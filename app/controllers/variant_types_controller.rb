class VariantTypesController < ApplicationController
  before_action :set_variant_type, only: [:show, :edit, :update, :destroy]

  def index
    @variant_types = VariantType.all
  end

  def show
  end

  def new
    @variant_type = VariantType.new
  end

  def edit
  end

  def create
    @variant_type = VariantType.new(variant_type_params)
    if @variant_type.save
      redirect_to @variant_type, notice: 'Variant type was successfully created.'
    else
      render :new
    end
  end

  def update
    if @variant_type.update(variant_type_params)
      redirect_to @variant_type, notice: 'Variant type was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @variant_type.destroy
    redirect_to variant_types_url, notice: 'Variant type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variant_type
      @variant_type = VariantType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def variant_type_params
      params.require(:variant_type).permit(:name, variant_values_attributes: [:name])
    end
end
