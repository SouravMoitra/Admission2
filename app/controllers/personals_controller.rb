# This controller helps users/candidates to fillup their personal information
# This donot contains update or destroyed since it will cause hamper to result generation
class PersonalsController < ApplicationController
  before_action :set_personal, only: [:show, :edit, :update, :destroy]

  # This helps to create personals
  def create
     @user = current_user
     @personal = @user.build_personal(personal_params)
     if @personal.save
       redirect_to home_path
     else
       render 'user_dashboard/home'
     end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_params
      params.require(:personal).permit(:user_id, :category_id, :avatar, :date_of_birth, :gender, :blood_group, :fathers_name, :mothers_name, :address_present, :first_name, :last_name, :middle_name)
    end
end
