class Clue < ApplicationRecord
  belongs_to :puzzle
  has_many :across_cells ,class_name: "Cell", foreign_key: "across_word"
  has_many :down_cells, class_name: "Cell", foreign_key: "down_word"

  def cells 
    if self.direction == "across" 
      self.across_cells
    else 
      self.down_cells
    end
  end
end
