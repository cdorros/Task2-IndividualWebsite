require 'spec_helper'

describe WorkEntry do
  before(:each) do
    @user = User.create(:name => "Bobby Joe")
    @attr =
    {
      :date => "January 1st 2030",
      :task => "Test task",
      :time_in => '12:30pm',
      :iteration => '1'
    }
  end

  it "should create a new instance given valid attributes" do
    @user.work_entries.create!(@attr)
      #note we are using user.work_entry to express the association
  end

  describe "user association" do
    before(:each) do
      @work_entry = @user.work_entries.create(@attr)
    end

    it "should have a user attribute" do
      @work_entry.should respond_to(:user)
    end

    it "should have the right associated user" do
      @work_entry.user_id.should == @user.id
      @work_entry.user.should == @user
    end

  end
end
