class Battleship
  def initialize
    @player = Player.new
    @computer = Computer.new
    @interface = Interface.new
    @board = Board.new
  end
  #upon running the program run the welcome message

  def output
    @board.output
  end
end

class Player
  attr_accessor :name
  def initialize(name="Player 1")
    @name = name
  end

  def what_is_your_name
    puts "What is your name?"
    name_answer = gets.chomp
    return name_answer
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

class Board < Battleship
  attr_accessor :game_board
  def initialize
    @game_board = {
      "A" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "B" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "C" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "D" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."}
    }
  end

  def output(board=@game_board)
    puts "========"
    print board["A"].values.join
    print "\n"
    print board["B"].values.join
    print "\n"
    print board["C"].values.join
    print "\n"
    print board["D"].values.join
    print "\n"
    puts "========"
  end
end
test = Battleship.new
test.output
