require 'pry'
require './lib/interface'

class Battleship
  def initialize
    @gameplay = Gameplay.new
  end

  def gameplay
    @gameplay
  end
end


class Gameplay
  def initialize
    @player = Player.new
    @computer = Computer.new
  end

  def player
    @player
  end

  def computer
    @computer
  end
end

  class Player
    attr_accessor :board
    def initialize
      @board = Board.new
    end

    def board
      @board
    end
  end

  class Computer
    attr_accessor :board
    def initialize
      @board = Board.new
    end

    def board
      @board
    end
  end

class Board
  attr_accessor :game_board, :ship_board
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

test = Battleship.new
puts test.gameplay.computer.board.output
