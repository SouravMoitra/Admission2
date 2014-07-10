require 'spec_helper'

describe ControlpanelsController do

  describe "GET 'controlpanel'" do
    it "returns http success" do
      get 'controlpanel'
      response.should be_success
    end
  end

end
