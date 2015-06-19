module Tictac
  class Player
    
    attr_reader :piece, :ui

    def initialize(piece, ui)
      @piece, @ui = piece, ui
    end

    def to_s
      piece
    end

  end
end