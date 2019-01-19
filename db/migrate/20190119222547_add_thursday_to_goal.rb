class AddThursdayToGoal < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :thursday, :boolean
  end
end
