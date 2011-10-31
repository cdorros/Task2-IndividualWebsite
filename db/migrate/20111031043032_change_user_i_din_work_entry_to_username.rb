class ChangeUserIDinWorkEntryToUsername < ActiveRecord::Migration
  def self.up
  		remove_column :work_entries, :user_id
  	    add_column :work_entries, :user_name, :string
  end

  def self.down
  	    remove_column :work_entries, :user_name
  	    add_column :work_entries, :user_id, :string
  end
end
