class AddFridayToGoal < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :friday, :boolean
  end
end
