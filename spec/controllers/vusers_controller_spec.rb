require 'spec_helper'

describe VusersController do

  describe "GET 'verify'" do
    it "returns http success" do
      get 'verify'
      response.should be_success
    end
  end

end
