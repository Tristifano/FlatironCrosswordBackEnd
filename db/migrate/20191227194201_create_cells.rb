class CreateCells < ActiveRecord::Migration[6.0]
  def change
    create_table :cells do |t|
      t.references :puzzle, null: false, foreign_key: true
      t.integer :across_word
      t.integer :down_word
      t.integer :index
      t.string :letter

      t.timestamps
    end
  end
end
