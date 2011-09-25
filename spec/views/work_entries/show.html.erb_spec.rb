require 'spec_helper'

describe "work_entries/show.html.erb" do
  before(:each) do
    @work_entry = assign(:work_entry, stub_model(WorkEntry,
      :task => "Task",
      :description => "MyText",
      :iteration => 1,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Task/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
