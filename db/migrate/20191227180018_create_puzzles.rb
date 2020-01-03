class CreatePuzzles < ActiveRecord::Migration[6.0]
  def change
    create_table :puzzles do |t|
      t.string :difficulty
      t.boolean :completed

      t.timestamps
    end
  end
end
