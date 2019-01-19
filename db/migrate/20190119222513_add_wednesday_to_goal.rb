class AddWednesdayToGoal < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :wednesday, :boolean
  end
end
