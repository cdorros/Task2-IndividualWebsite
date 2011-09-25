class CreateWorkEntries < ActiveRecord::Migration
  def self.up
    create_table :work_entries do |t|
      t.date :date
      t.string :task
      t.time :time_in
      t.time :time_out
      t.text :description
      t.integer :iteration
      t.integer :user_id

      t.timestamps
    end

    #sort entries by user_id in reverse order (newest first)
#    add_index :work_entries, [:user_id, :date, :time_out]
  end

  def self.down
    drop_table :work_entries
  end
end
