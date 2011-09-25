require 'spec_helper'

describe "work_entries/edit.html.erb" do
  before(:each) do
    @work_entry = assign(:work_entry, stub_model(WorkEntry,
      :task => "MyString",
      :description => "MyText",
      :iteration => 1,
      :user_id => 1
    ))
  end

  it "renders the edit work_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => work_entries_path(@work_entry), :method => "post" do
      assert_select "input#work_entry_task", :name => "work_entry[task]"
      assert_select "textarea#work_entry_description", :name => "work_entry[description]"
      assert_select "input#work_entry_iteration", :name => "work_entry[iteration]"
      assert_select "input#work_entry_user_id", :name => "work_entry[user_id]"
    end
  end
end
