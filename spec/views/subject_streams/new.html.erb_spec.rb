require 'spec_helper'

describe "subject_streams/new" do
  before(:each) do
    assign(:subject_stream, stub_model(SubjectStream,
      :subject_stream => "MyString"
    ).as_new_record)
  end

  it "renders new subject_stream form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subject_streams_path, "post" do
      assert_select "input#subject_stream_subject_stream[name=?]", "subject_stream[subject_stream]"
    end
  end
end
