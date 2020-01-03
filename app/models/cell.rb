class Cell < ApplicationRecord
    # belongs_to :d_word, class_name: "Clue", foreign_key: "down_word"
    # belongs_to :a_word, class_name: "Clue", foreign_key: "across_word"

    def d_word
        if self.down_word != 0
            Clue.find(self.down_word)
        end
    end
    
    def a_word
        if self.across_word != 0
            Clue.find(self.across_word)
        end
    end


end
