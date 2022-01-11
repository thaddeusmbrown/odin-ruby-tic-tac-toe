require 'pry-byebug'

class TicTacToe

  attr_accessor :board_state, :player_x, :player_o, :turn_counter

  def new_game
    @board_state = (1..9).to_a
    @turn_counter = ['X', 'O']
    @turns = 0
    self.display_board
    self.take_turn(@turn_counter[0])
  end
  protected
    def check_victory(side)
      # binding.pry
      if @board_state[0] == side && ((@board_state[1] == side && @board_state[2] == side) || (@board_state[3] == side && @board_state[6] == side) || (@board_state[4] == side && @board_state[8] == side))
        puts "Victory! Player #{side} wins!"
        return 1
      elsif @board_state[1] == side && board_state[4] == side && board_state[7] == side
        puts "Victory! Player #{side} wins!"
        return 1
      elsif @board_state[2] == side && ((board_state[5] == side && board_state[8] == side) || (@board_state[4] == side && @board_state[6] == side))
        puts "Victory! Player #{side} wins!"
        return 1
      elsif @board_state[3] == side && @board_state[4] == side && @board_state[5] == side
        puts "Victory! Player #{side} wins!"
        return 1
      elsif @board_state[6] == side && @board_state[7] == side && @board_state[8] == side
        puts "Victory! Player #{side} wins!"
        return 1
      else
        @turn_counter[0], @turn_counter[1] = @turn_counter[1], @turn_counter[0]
        @turns += 1
        if @turns == 9
          puts "Tie game!"
          return 1
        else
          false
        end
      end
    end
    def display_board
      # binding.pry
      puts "     |     |     "
      puts "  #{board_state[0]}  |  #{board_state[1]}  |  #{board_state[2]}  "
      puts "     |     |     "
      puts "-----------------"
      puts "     |     |     "
      puts "  #{board_state[3]}  |  #{board_state[4]}  |  #{board_state[5]}  "
      puts "     |     |     "
      puts "-----------------"
      puts "     |     |     "
      puts "  #{board_state[6]}  |  #{board_state[7]}  |  #{board_state[8]}  "
      puts "     |     |     "
    end
    def take_turn(side)
      puts "\n Player #{side}'s turn.\n Enter number of place you'd like to choose:"
      while 1
        begin
          # binding.pry
          num = Kernel.gets.match(/\d+/)[0]
          unless @board_state.include? num.to_i
            continue
          end
        rescue
          puts "Must enter number between 1 and 9 that is not chosen. Try again:"
        else
          @board_state[num.to_i-1] = side
          self.display_board
          break
        end
      end
      # binding.pry
      if self.check_victory(side)
        return 1
      else
        self.take_turn(turn_counter[0])
      end
    end
end



game = TicTacToe.new
game.new_game
