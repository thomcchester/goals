class AddSuccessesToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :success, :array
  end
end
