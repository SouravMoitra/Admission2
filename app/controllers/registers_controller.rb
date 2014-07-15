class RegistersController < ApplicationController
  # this below line validates that admins can only set registers
  # admin_signin_status is present in application_helper.rb
  before_action :admin_signin_status, only: [:index, :show, :edit, :new, :destroy]

  # GET /registers
  # GET /registers.json
  def index
    @registers = Register.all
  end

  # GET /registers/1
  def show
    @register = Register.find(params[:id])
  end

  # GET /registers/new
  def new
    @register = Register.new
  end

  # GET /registers/1/edit
  def edit
    @register = Register.find(params[:id])
  end

  # POST /registers
  def create
    @register = Register.new(register_params)

    respond_to do |format|
      if @register.save
        format.html { redirect_to @register, notice: 'Register was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /registers/1
  def update
    @register = Register.find(params[:id])
    respond_to do |format|
      if @register.update(register_params)
        format.html { redirect_to @register, notice: 'Register was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /registers/1
  def destroy
    @register = Register.find(params[:id])
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url, notice: 'Register was successfully destroyed.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_params
      params.require(:register).permit(:active)
    end
end
