class TodoItem < ActiveRecord::Base
belongs_to :list

validate :state, inclusion: (0..3)
scope :backlog, ->{where(state: 1)}
scope :ready, ->{where(state:2)}
scope :in_progress, ->{where(state:3)}
scope :complete, ->{where(state:4)}

def status
  case state
  when 0 then "Backlog"
  when 1 then "Ready"
  when 2 then "In Progress"
  when 3 then "Complete"
  end
end
end
