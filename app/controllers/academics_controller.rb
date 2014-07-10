class AcademicsController < ApplicationController
  def create
    @user = current_user
    @academic = @user.create_academic(parameters)
    # demo calculations of final_marks needs to be replaced
    # needs to be refactored
    # Calculating marks for rank calculation
    # present in application_helper.rb
    calculated_marks = calculate_marks(@academic)
    @academic.update(calculated_marks: calculated_marks)
    redirect_to home_path
  end

  def destroy
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
end
