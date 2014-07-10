require 'spec_helper'

describe "subject_streams/index" do
  before(:each) do
    assign(:subject_streams, [
      stub_model(SubjectStream,
        :subject_stream => "Subject Stream"
      ),
      stub_model(SubjectStream,
        :subject_stream => "Subject Stream"
      )
    ])
  end

  it "renders a list of subject_streams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject Stream".to_s, :count => 2
  end
end
