class VusersController < ApplicationController
  # All the below authentication methods are in application_helper.rb
  # validates if user is a verfier
  before_action :verfier_signin_status, only: [:verify]

  # get 'user_dashboard/verify'
  # This is the location from where verfier should verfy candidates documents
  def verify
    @users = User.paginate(:page => params[:page], :per_page => 20)
    @user = params[:search].to_i if params[:search]
    if params[:appid] && params[:verified]
       appli = Application.find(params[:appid])
       appli.update(verified: params[:verified] )
    end
  end
end
