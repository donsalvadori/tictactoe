require 'tictac/io/console_input'

module Tictac
  class UI

    attr_reader :delegate

    def initialize(delegate = IO::Console.new)
      @delegate = delegate
    end

    def banner
      delegate.banner
    end

    def explanation
      delegate.explanation
    end

    def turn(player)
      delegate.turn player
    end

    def won(player)
      delegate.won player
    end

    def tie
      delegate.tie
    end

    def display_board(board)
      delegate.display_board board
    end

    def invalid_input
      delegate.invalid_input
    end

    def get_move
      delegate.get_move
    end

    def thinking(player)
      delegate.thinking player
    end

    def quit(&block)
      delegate.quit &block
    end
  end
end