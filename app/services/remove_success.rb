class RemoveSucces
  attr_reader :goal, :date

  def initialize(goal,date)
    @goal = goal
    @date = date
  end

  def call 
    @goal.success.delete(@date)
    @goal.save!
  end
end