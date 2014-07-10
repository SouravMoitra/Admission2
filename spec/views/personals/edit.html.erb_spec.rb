require 'spec_helper'

describe "personals/edit" do
  before(:each) do
    @personal = assign(:personal, stub_model(Personal,
      :user_id => 1,
      :gender => "MyString",
      :blood_group => "MyString",
      :fathers_name => "MyString",
      :mothers_name => "MyString",
      :address_present => "MyText"
    ))
  end

  it "renders the edit personal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", personal_path(@personal), "post" do
      assert_select "input#personal_user_id[name=?]", "personal[user_id]"
      assert_select "input#personal_gender[name=?]", "personal[gender]"
      assert_select "input#personal_blood_group[name=?]", "personal[blood_group]"
      assert_select "input#personal_fathers_name[name=?]", "personal[fathers_name]"
      assert_select "input#personal_mothers_name[name=?]", "personal[mothers_name]"
      assert_select "textarea#personal_address_present[name=?]", "personal[address_present]"
    end
  end
end
