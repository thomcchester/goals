class AddSuccess
  attr_reader :goal

  def intialize(goal)
    @goal = goal
  end

  def call
    @goal.success.push(Date.today)
    @goal.save!
  end
end