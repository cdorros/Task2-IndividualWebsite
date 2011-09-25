class WorkEntry < ActiveRecord::Base
 # attr_accessible :date, :task, :time_in, :time_out, :description, :iteration
  #belongs to DB attribute:
  belongs_to :user
end
