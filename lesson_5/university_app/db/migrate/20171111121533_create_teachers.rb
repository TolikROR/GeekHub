class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.references :university, foreign_key: true

      t.timestamps
    end
  end
end
