class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :executer, class_name: "User"
end
