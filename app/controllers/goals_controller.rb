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

  private
    def goal_params
      params.require(:goal).permit(:title, :description, :status)
    end
end
