class AddSaturdayToGoal < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :saturday, :boolean
  end
end
