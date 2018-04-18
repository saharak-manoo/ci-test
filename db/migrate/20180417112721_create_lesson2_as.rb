class CreateLesson2As < ActiveRecord::Migration[5.1]
  def change
    create_table :lesson2_as do |t|
      t.string :string_test
      t.datetime :datetime_test
      t.integer :integer_test
      t.string :boolean_test
      t.string :boolean

      t.timestamps
    end
  end
end
