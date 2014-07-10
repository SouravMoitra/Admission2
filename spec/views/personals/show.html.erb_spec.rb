require 'spec_helper'

describe "personals/show" do
  before(:each) do
    @personal = assign(:personal, stub_model(Personal,
      :user_id => 1,
      :gender => "Gender",
      :blood_group => "Blood Group",
      :fathers_name => "Fathers Name",
      :mothers_name => "Mothers Name",
      :address_present => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Gender/)
    rendered.should match(/Blood Group/)
    rendered.should match(/Fathers Name/)
    rendered.should match(/Mothers Name/)
    rendered.should match(/MyText/)
  end
end
