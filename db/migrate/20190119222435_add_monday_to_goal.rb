class AddMondayToGoal < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :monday, :boolean
  end
end
