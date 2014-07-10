require 'spec_helper'

describe "registers/new" do
  before(:each) do
    assign(:register, stub_model(Register,
      :active => false
    ).as_new_record)
  end

  it "renders new register form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", registers_path, "post" do
      assert_select "input#register_active[name=?]", "register[active]"
    end
  end
end
