class AddTuesdayToGoal < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :tuesday, :boolean
  end
end
