class GoalSuccessUpdater
  attr_reader :goal

  def intitialize(goal)
    @goal = goal
  end

  @goal.success.push(Date.today)
  @goal.save!
  
  redirect_to goals_path
end