require 'pry-byebug'

class TicTacToe

  attr_accessor :board_state, :player_x, :player_o, :turn_counter

  def new_game
    @board_state = (1..9).to_a
    @turn_counter = ['X', 'O']
    self.display_board
    self.take_turn(@turn_counter[0])
  end
  protected
    def check_victory(side)
      

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
    def update_board
      
    end
    def take_turn(side)
      puts "\n Player #{side}'s turn.\n Enter number of place you'd like to choose:"
      while 1
        begin
          binding.pry
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
      self.check_victory(side)
    end
end



game = TicTacToe.new
game.new_game
