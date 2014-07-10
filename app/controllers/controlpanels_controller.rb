class ControlpanelsController < ApplicationController
  # validates if user is Admin present in application_helper.rb
  before_action :admin_signin_status, only: [:controlpanel, :resetranks]

  def controlpanel
  end

  def resetranks
    reset_ranks
    redirect_to controlpanel_path
  end

  def generateranks
    Rank.generate_rank
    redirect_to controlpanel_path
  end
end
