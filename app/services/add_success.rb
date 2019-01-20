class AddSuccess
  attr_reader :goal

  def intialize(goal)
    @goal = goal
  end

  def call
    return if @goal.today_goal_exist?
    @goal.success.push(Date.today)
    @goal.save!
  end
end