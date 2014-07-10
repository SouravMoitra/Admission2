require 'spec_helper'

describe "subject_streams/show" do
  before(:each) do
    @subject_stream = assign(:subject_stream, stub_model(SubjectStream,
      :subject_stream => "Subject Stream"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject Stream/)
  end
end
