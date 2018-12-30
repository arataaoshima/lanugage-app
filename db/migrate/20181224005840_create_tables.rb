class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :quiz_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
