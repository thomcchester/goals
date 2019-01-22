class GoalFailureUpdater
  attr_reader :goal

  def inititialize(goal)
    @goal = goal
  end

  AddFailure.new(@goal).call
  redirect_to goals_path
end