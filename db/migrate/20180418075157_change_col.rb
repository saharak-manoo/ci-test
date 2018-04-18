class ChangeCol < ActiveRecord::Migration[5.1]
  def change
    remove_column :lesson2_as, :boolean
    remove_column :lesson2_as, :boolean_test
    add_column :lesson2_as, :boolean_test, :boolean
  end
end
