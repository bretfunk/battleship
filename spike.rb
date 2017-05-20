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
    puts "Welcome to BATTLESHIP"

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
  attr_accessor :board
  def initialize
    @board = {
      {A1: ".", A2: ".", A3: ".", A4: "."}

    }
end
