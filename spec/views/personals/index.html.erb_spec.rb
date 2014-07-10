require 'spec_helper'

describe "personals/index" do
  before(:each) do
    assign(:personals, [
      stub_model(Personal,
        :user_id => 1,
        :gender => "Gender",
        :blood_group => "Blood Group",
        :fathers_name => "Fathers Name",
        :mothers_name => "Mothers Name",
        :address_present => "MyText"
      ),
      stub_model(Personal,
        :user_id => 1,
        :gender => "Gender",
        :blood_group => "Blood Group",
        :fathers_name => "Fathers Name",
        :mothers_name => "Mothers Name",
        :address_present => "MyText"
      )
    ])
  end

  it "renders a list of personals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Blood Group".to_s, :count => 2
    assert_select "tr>td", :text => "Fathers Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mothers Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
