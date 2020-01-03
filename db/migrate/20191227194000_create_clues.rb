class CreateClues < ActiveRecord::Migration[6.0]
  def change
    create_table :clues do |t|
      t.references :puzzle, null: false, foreign_key: true
      t.string :word
      t.string :direction
      t.string :hint
      t.integer :number
      t.boolean :joined, null: false, default: false

      t.timestamps
    end
  end
end
