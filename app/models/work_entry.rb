class WorkEntry < ActiveRecord::Base

 # attr_accessible :date, :task, :time_in, :time_out, :description, :iteration
  #belongs to DB attribute:
  belongs_to :user
  
  def hours
    hours = (self.end - self.start) / 3600
    hours = "%.1f" % hours
    return hours
  end
  
end
