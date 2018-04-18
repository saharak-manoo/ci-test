class CreateLesson1C < ActiveRecord::Migration[5.1]
  def change
    create_table :lesson1_cs do |t|
      t.string :string_test
      t.datetime :datetime_test
      t.integer  :integer_test
      t.boolean :boolean_test
    end
  end
end
