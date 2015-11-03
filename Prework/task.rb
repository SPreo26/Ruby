class Task
  attr_reader :name, :complete, :priority

  def initialize(name)
    @name = name
    @complete = false
    @priority = 5
    @priority_min = 1
    @priority_max = 10
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
  	@complete = !@complete
  end

  def assign_priority (priority)
  		if priority < @priority_min or priority > @priority_max 
  			puts " Priority must be from 1 to 10"
  			return
  		else
  			@priority = priority
  			return
  		end
  end
end