class CategoriesController < ApplicationController
  # this below line validates that admins can only set and view categories
  # admin_signin_status is present in application_helper.rb
  before_action :admin_signin_status, only: [:index, :show, :edit, :new, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: 'category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:category)
    end
end
