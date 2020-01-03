class PuzzlesController < ApplicationController
    def index
        puzzle = Puzzle.all
        render json: puzzle
    end

    def show
        puzzle = Puzzle.find(params[:id])
        render json: puzzle, only: [:difficulty], include: { 
            clues: { except: [:puzzle_id, :created_at, :updated_at], include: [cells: { except: [:id, :created_at, :updated_at]}]},
            cells: {only: [:index, :letter, :down_word, :across_word]}
        } 
    end
end
