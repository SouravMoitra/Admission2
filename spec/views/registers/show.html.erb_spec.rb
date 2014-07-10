require 'spec_helper'

describe "registers/show" do
  before(:each) do
    @register = assign(:register, stub_model(Register,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
