class AddFailuresToGoal < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :failure, :array
  end
end
