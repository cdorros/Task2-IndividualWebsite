class AddStartAndEndToWorkEntries < ActiveRecord::Migration
  def self.up
    add_column :work_entries, :start, :datetime
    add_column :work_entries, :end, :datetime
  end

  def self.down
    remove_column :work_entries, :end
    remove_column :work_entries, :start
  end
end
