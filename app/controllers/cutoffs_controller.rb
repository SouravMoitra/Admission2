class CutoffsController < ApplicationController
  # this below line validates that admins can only set cutoffs
  # admin_signin_status is present in application_helper.rb
  before_action :admin_signin_status, only: [:index, :show, :edit, :new, :destroy]

  # list all cutoffs
  def index
    @cutoffs = Cutoff.all
  end

  # creates new cutoffs
  def new
    @cutoff = Cutoff.new
  end

  def create
    @cutoff = Cutoff.new(cutoff_params)
    respond_to do |format|
      if @cutoff.save
        format.html { redirect_to cutoffs_path, notice: 'cutoff was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def destroy
    @cutoff = Cutoff.find(params[:id])
    @cutoff.destroy
    redirect_to cutoffs_path
  end

  private
    def cutoff_params
      params.require(:cutoff).permit(:cutoff_marks, :category_id, :stream_id)
    end
end
