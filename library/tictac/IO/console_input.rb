require_relative 'colorize'

module Tictac
  module IO
    class Console

      def banner
        puts "Time to play Tic-Tac-Toe!".green
      end

      def explanation
        puts "\nEnter the cordinates for where you want to move".yellow
        puts "Example: '0' would move you to the 1st column, 1st row"
        puts "\nPress 'q' to Quit the game"
      end

      def turn(player)
        puts "\nPlayer #{player}'s turn".yellow
      end

      def won(player)
        puts "\nPlayer #{player} wins!".green
      end

      def tie
        puts "\nIt's a tie!".yellow
      end

      def display_board(board)
        output = "\n"
        0.upto(8) do |p|
          output << color(board, p)
          case p % 3
          when 0,1 then output << "|"
          when 2 then output << "\n------------\n" unless position == 8
          end
        end
        puts output
      end

      def invalid_move
        puts "\nInvalid input. Please try again.".red
      end

      def thinking(piece)
        puts "\nPlayer #{piece} is thinking..."
        sleep 2
      end

      def quit
        yield if block_given?
        puts "\nThanks for playing!".green
        abort
      end

      private

      def color(board, position)
        if board.spaces[position]
          " #{board.spaces[position]}"
        else
          " #{position}".light_black
        end
      end

    end
  end
end