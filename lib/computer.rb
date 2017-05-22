class Computer
  attr_accessor :game_board
  def initialize
  @game_board = {
    "A" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
    "B" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
    "C" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
    "D" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "}
  }
  end

  def output(board=@game_board) #don't know if this will go in Computer, maybe board
    puts "============="
    puts "   1  2  3  4"
    print "A"; board["A"].values.each {|x| print "  " + x}.join; print "\n\n"
    print "B"; board["B"].values.each {|x| print "  " + x}.join; print "\n\n"
    print "C"; board["C"].values.each {|x| print "  " + x}.join; print "\n\n"
    print "D"; board["D"].values.each {|x| print "  " + x}.join; print "\n"
    puts "============="
  end

  def game_board
    @game_board
  end

  def random_coordinate
    letter = (65 + rand(4)).chr
    number = rand(1..4)
    return "#{letter}#{number}"
  end

  def available?(coordinate, board=game_board)
    board[coordinate[0]][coordinate[1]] == " "
  end

  def ship_hit?(coordinate, board=game_board)
    board[coordinate[0]][coordinate[1]] == "S"
  end

end
