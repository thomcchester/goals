class RemoveFailure
  attr_reader :goal, :date

  def initialize(goal,date)
    @goal = goal 
    @date = date
  end

  def call
    @goal.failure.delete(@date)
    @goal.save!
  end
  
end