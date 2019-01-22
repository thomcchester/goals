class GoalStats
  attr_reader :goal
  
  def initialize(goal)
    @goal = goal 
  end

  def success_rate_total
    return 0 unless @goal.success
    @goal.success.size.to_f / (@goal.success.size + @goal.failure.size).to_f 
  end

  def failure_rate_total
    return 0 unless @goal.failure
    @goal.failure.size.to_f / (@goal.success.size + @goal.failure.size).to_f 
  end

  def array_stringify_success(day) 
    @goal.success.select{|i| i.strftime("%A") == day}.size.to_f
  end

  def array_stringify_failure(day) 
    @goal.failure.select{|i| i.strftime("%A") == day}.size.to_f
  end

  def sunday_success_rate
    return "n/a" unless @goal.sunday
    array_stringify_success("sunday") / (array_stringify_success("sunday") + array_stringify_failure("sunday"))
  end

  def monday_success_rate
    return "n/a" unless @goal.monday
    array_stringify_success("monday") / (array_stringify_success("monday") + array_stringify_failure("monday"))
  end

  def tuesday_success_rate
    return "n/a" unless @goal.tuesday
    array_stringify_success("tuesday") / (array_stringify_success("tuesday") + array_stringify_failure("tuesday"))
  end

  def wednesday_success_rate
    return "n/a" unless @goal.wednesday
    array_stringify_success("wednesday") / (array_stringify_success("wednesday") + array_stringify_failure("wednesday"))
  end

  def thursday_success_rate
    return "n/a" unless @goal.thursday
    array_stringify_success("thursday") / (array_stringify_success("thursday") + array_stringify_failure("thursday"))
  end

  def friday_success_rate
    return "n/a" unless @goal.friday
    array_stringify_success("friday") / (array_stringify_success("friday") + array_stringify_failure("friday"))
  end

  def saturday_success_rate
    return "n/a" unless @goal.saturday
    array_stringify_success("saturday") / (array_stringify_success("saturday") + array_stringify_failure("saturday"))
  end

  def today_success_rate
    today_day = Date.today.strftime("%A")
    @goals.success.select{|i| i.strftime("%A") == today_day} /(@goals.success.select{|i| i.strftime("%A") == today_day} + @goals.failure.select{|i| i.strftime("%A") == today_day})
  end
end