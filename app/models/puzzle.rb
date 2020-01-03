class Puzzle < ApplicationRecord
    has_many :clues
    has_many :cells
end
