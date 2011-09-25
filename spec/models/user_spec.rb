require 'spec_helper'

describe User do
  
  describe "work_event associations" do
    before(:each) do
      @user = User.create(@attr)
    end

    it "should have a work_entries attribute" do
      @user.should respond_to(:work_entries)
    end

  end

end
