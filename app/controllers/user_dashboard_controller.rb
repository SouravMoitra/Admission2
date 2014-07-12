class UserDashboardController < ApplicationController
  # All the below authentication methods are in application_helper.rb
  # validates if the user is signed in
  before_action :user_signin_status, only: [:home]

  # get 'user_dashboard/home'
  # This is the location user should go to give input
  def home
    @user = current_user
    @streams = Stream.all
    @personal = Personal.new
  end

  def personal_creator
     @user = current_user
     @personal = @user.build_personal(personal_params)
     if @personal.save
       flash[:notice] = "Success"
     else
       flash[:alert] = @personal.errors.full_messages.each{|e|}
     end
     redirect_to home_path
   end


  private
  def personal_params
    params.require(:personal).permit(:user_id, :category_id, :avatar, :date_of_birth, :gender, :blood_group, :fathers_name, :mothers_name, :address_present, :first_name, :last_name, :middle_name)
  end
end
