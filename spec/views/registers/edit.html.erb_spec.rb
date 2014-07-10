require 'spec_helper'

describe "registers/edit" do
  before(:each) do
    @register = assign(:register, stub_model(Register,
      :active => false
    ))
  end

  it "renders the edit register form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", register_path(@register), "post" do
      assert_select "input#register_active[name=?]", "register[active]"
    end
  end
end
