class AcademicsController < ApplicationController
  def create
    @user = current_user
    @academic = @user.create_academic(parameters)
    # demo calculations of final_marks needs to be replaced
    # needs to be refactored
    # Calculating marks for rank calculation
    # present in application_helper.rb
    calculated_marks = calculate_marks(@academic.hs_marks_percent, @academic.tenth_marks_percent, @academic.hs_year_pass, @academic.hs_board)
    @academic.update(calculated_marks: calculated_marks)
    redirect_to home_path
  end

  def destroy
  end
  private
  def parameters
    params.require(:academic).permit(:user_id, :tenth_roll, :tenth_year_pass, :tenth_marks_percent, :tenth_board,
                                     :hs_roll, :hs_year_pass, :hs_marks_percent, :hs_board)
  end
end
