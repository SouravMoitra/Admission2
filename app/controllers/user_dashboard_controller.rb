class UserDashboardController < ApplicationController
  # All the below authentication methods are in application_helper.rb
  # validates if the user is signed in
  before_action :user_signin_status, only: [:home]

  # get 'user_dashboard/home'
  # This is the location user should go to give input
  def home
    @user = current_user
    @streams = Stream.all
  end
end
