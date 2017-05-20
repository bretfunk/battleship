class Battleship
  def initialize
    @player = Player.new
    @computer = Computer.new
    @interface = Interface.new
    @board = Board.new
  end
  #upon running the program run the welcome message
end
class Player
  attr_accessor :name
  def initialize(name="Player 1")
    @name = name
  end
end

class Computer
  attr_reader :name
  def initialize
    @name = "Computer"
  end
end

class Interface
  def wecome
    puts "Welcome to BATTLESHIP /n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    answer = gets.chomp.downcase
    case answer
      when "p" then self.play
      when "i" then self.instructions
      when "q" then self.quit
    end
  end


  def play
    puts "play"
  end

  def instructions
    puts "instructions"
  end

  def quit
    puts "quiting game"
  end
end

class Board
  attr_accessor :game_board
  def initialize
    @game_board = {
      "A" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "B" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "C" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "D" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."}
    }
  end

  def print(board=@game_board)
    p board
  end
end
Battleship.new
puts @board.print
#game_board["A"].values.join
