class RegistrationsController < Devise::RegistrationsController

  # POST /resource
  def create
    if simple_captcha_valid?
        super
    else
        build_resource(sign_up_params)
        clean_up_passwords(resource)
        flash.now[:alert] = "There was an error with the Captcha code below. Please re-enter the code."
        render :new
    end
  end

end
