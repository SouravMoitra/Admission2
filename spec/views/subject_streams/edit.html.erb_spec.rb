require 'spec_helper'

describe "subject_streams/edit" do
  before(:each) do
    @subject_stream = assign(:subject_stream, stub_model(SubjectStream,
      :subject_stream => "MyString"
    ))
  end

  it "renders the edit subject_stream form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subject_stream_path(@subject_stream), "post" do
      assert_select "input#subject_stream_subject_stream[name=?]", "subject_stream[subject_stream]"
    end
  end
end
