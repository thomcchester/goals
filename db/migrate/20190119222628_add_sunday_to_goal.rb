class AddSundayToGoal < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :sunday, :boolean
  end
end
