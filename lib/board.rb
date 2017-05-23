#require './battleship'
class Board
  attr_accessor :game_board, :ship_board
  def initialize
    @game_board = {
      "A" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "B" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "C" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "D" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "}
    }
    @ship_board = {
      "A" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "B" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "C" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "D" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "}
    }
  end

    def game_board
      @game_board
    end

    def ship_board
      @ship_board
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

    def ship_output(board=@ship_board) #for testing
      puts "============="
      puts "   1  2  3  4"
      print "A"; board["A"].values.each {|x| print "  " + x}.join; print "\n\n"
      print "B"; board["B"].values.each {|x| print "  " + x}.join; print "\n\n"
      print "C"; board["C"].values.each {|x| print "  " + x}.join; print "\n\n"
      print "D"; board["D"].values.each {|x| print "  " + x}.join; print "\n"
      puts "============="
    end
end
