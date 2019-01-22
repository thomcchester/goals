class Goal < ApplicationRecord

  def goal_days
    hold_array = []
    hold_array.push("sunday") if sunday
    hold_array.push("monday") if monday
    hold_array.push("tuesday") if tuesday
    hold_array.push("wednesday") if wednesday
    hold_array.push("thursday") if thursday
    hold_array.push("friday") if friday
    hold_array.push("saturday") if saturday
    hold_array
  end

  def is_today?
    self.goal_days.include?(Date.today.strftime("%A").downcase)
  end
end
