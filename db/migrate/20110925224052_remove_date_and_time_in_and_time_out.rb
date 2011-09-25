class RemoveDateAndTimeInAndTimeOut < ActiveRecord::Migration
  def self.up
    remove_column :work_entries, :date
    remove_column :work_entries, :time_in
    remove_column :work_entries, :time_out 
  end

  def self.down
    add_column :work_entries, :date, :date
    add_column :work_entries, :time_in, :time
    add_column :work_entries, :time_out, :time
  end
end
