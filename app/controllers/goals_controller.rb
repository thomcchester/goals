class GoalsController < ApplicationController
  def new
  end

  def index
    @goals = Goal.where(status: "active")
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.status = "active"
    @goal.save
    redirect_to @goal
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def today_goal_exist?
    return true if @goal.success.include?(Date.today) || @goal.failure.include?(Date.today)
    return false
  end

  private
    def goal_params
      params.require(:goal).permit(:title, :description, :status, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
    end
end
