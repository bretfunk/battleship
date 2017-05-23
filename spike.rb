require 'pry'

class Battleship
  def initialize
    @player = Player.new
    @computer = Computer.new
  end
end

  class Player
    def initialize
      @player = Board.new
    end
  end

  class Computer
    def initialize
    @computer = Board.new
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
