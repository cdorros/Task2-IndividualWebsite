class User < ActiveRecord::Base
  #has many DB attribute:
  has_many :work_entries
end
