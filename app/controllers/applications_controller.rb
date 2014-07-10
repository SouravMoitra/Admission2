# This helps to apply a candidate to particular subject
class ApplicationsController < ApplicationController
  def create
    @user = current_user
    @application = @user.create_application(parameters)
    redirect_to home_path
  end

  def destroy
  end

  private
  def parameters
    params.require(:application).permit(:user_id, :stream_id)
  end

end
