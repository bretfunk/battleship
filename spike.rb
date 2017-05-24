require 'pry'

class Battleship
  attr_accessor :gameplay
  def initialize
    @gameplay = Gameplay.new
  end
end

class Gameplay
  attr_accessor :player, :computer
  def initialize
    @player = Player.new
    @computer = Computer.new
  end

end

  class Player
    attr_accessor :player_board
    def initialize
      @player_board = Board.new
    end

    def computer_board
      @computer.computer_board
    end
  end

  class Computer
    attr_accessor :computer_board, :gameplay
    def initialize
      @computer_board = Board.new
    end

    def player_class
      gameplay.player
    end
  end

class Board
  attr_accessor :game_board
  def initialize
    @game_board = {
      "A" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "B" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "C" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "D" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "}
    }
  end

  def game_board
    @game_board
  end

  def output(board=@game_board)
    puts "============="
    puts "   1  2  3  4"
    print "A"; board["A"].values.each {|x| print "  " + x}.join; print "\n\n"
    print "B"; board["B"].values.each {|x| print "  " + x}.join; print "\n\n"
    print "C"; board["C"].values.each {|x| print "  " + x}.join; print "\n\n"
    print "D"; board["D"].values.each {|x| print "  " + x}.join; print "\n"
    puts "============="
  end
end

#test = Battleship.new
#test.gameplay.computer.computer_board.output
test = Computer.new
#test.computer_board.output
test.player_class.player_board.output
