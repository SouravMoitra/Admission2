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
    @academic = Academic.new
  end

  def personal_creator
     @user = current_user
     @personal = @user.build_personal(personal_params)
     if @personal.save
       flash[:notice] = "Successfully created your personal infromation"
     else
       flash[:alert] = "#{@personal.errors.count} Errors #{@personal.errors.full_messages.each{|e|}.to_s}"
     end
     redirect_to home_path
   end

   def academic_creator
     @user = current_user
     @academic = @user.build_academic(parameters)
     # demo calculations of final_marks needs to be replaced
     # needs to be refactored
     # Calculating marks for rank calculation
     # present in application_helper.rb
     calculated_marks = calculate_marks(@academic)
     @academic.update(calculated_marks: calculated_marks)
     if @academic.save
       flash[:notice] = "Successfully created your academic infromation"
     else
       flash[:alert] = "#{@academic.errors.count} Errors #{@academic.errors.full_messages.each{|e|}.to_s}"
     end
       redirect_to home_path
   end

   private
   def parameters
     params.require(:academic).permit(:user_id, :tenth_roll, :tenth_year_pass, :tenth_marks_percent, :tenth_board,
                                      :hs_roll, :hs_year_pass, :hs_marks_percent, :hs_board,
                                      :sub1, :sub1_marks,
                                      :sub2, :sub2_marks,
                                      :sub3, :sub3_marks,
                                      :sub4, :sub4_marks,
                                      :sub5, :sub5_marks,
                                      :sub6, :sub6_marks,
                                      :sub7, :sub7_marks,
                                      :sub8, :sub8_marks,
                                      :sub9, :sub9_marks,
                                      :sub10, :sub10_marks, :subject_streams_id)
   end

  def personal_params
    params.require(:personal).permit(:user_id, :category_id, :avatar, :date_of_birth, :gender, :blood_group, :fathers_name, :mothers_name, :address_present, :first_name, :last_name, :middle_name)
  end
end
