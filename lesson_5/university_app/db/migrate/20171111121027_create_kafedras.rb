class CreateKafedras < ActiveRecord::Migration[5.1]
  def change
    create_table :kafedras do |t|
      t.string :name
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
