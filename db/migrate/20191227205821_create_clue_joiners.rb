class CreateClueJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :clue_joiners do |t|
      t.integer :clue_id
      t.integer :joined_clue_id

      t.timestamps
    end
  end
end
