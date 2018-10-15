class CategoriesController < ApplicationController
  before_action :find_category, except: [:index, :new, :create]

  def index
    @categories = Category.page(params[:page])
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_param)
    if @category.save
      redirect_to categories_path, notice: t('categories.create_successful')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_param)
      redirect_to categories_path, notice: t('categories.update_successful')
    else
      render :edit
    end
  end

  def destroy
    if @category.destroy
      redirect_to categories_path, notice: t('categories.delete_successful')
    else
      redirect_to categories_path, notice: @category.errors.full_messages.join(' ')
    end
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_param
    params.require(:category).permit(:name)
  end
end
