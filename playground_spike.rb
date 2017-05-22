class Player
  def initialize
    @root = Board.new
  end

  def root
    @root
  end

end

class Board
  attr_accessor :game_board, :full_game_board #for testing
  def initialize
  @game_board = {
    "A" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
    "B" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
    "C" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
    "D" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "}
  }
  @full_game_board = { #for testing
    "A" => {"1" => "S", "2" => "S", "3" => "S", "4" => "S"},
    "B" => {"1" => "S", "2" => "S", "3" => "S", "4" => "S"},
    "C" => {"1" => "S", "2" => "S", "3" => "S", "4" => "S"},
    "D" => {"1" => "S", "2" => "S", "3" => "S", "4" => "S"}
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

  def game_board
    @game_board
  end

  def full_game_board #for testing
    @full_game_board
  end

  def available?(coordinate, board=game_board)
    board[coordinate[0]][coordinate[1]] == " "
  end

  def ship_hit?(coordinate, board=game_board) #make sure you use the correct board
    board[coordinate[0]][coordinate[1]] == "S"
  end

  def player_shoot(location)
    if available?(location)
      shot
    else
      puts "not a valid location"
    end
  end

  def ship_inserter(array, board=game_board)
    array.each {|position| board[position[0]][position[1]] = "S"}
  end

  def hit_miss_inserter(location, board=game_board) #using computer gameboard for testing purposes
    if ship_hit?(location) == true
      board[shot[0]][shot[1]] = "H"
    else
      board[shot[0]][shot[1]] = "M"
    end
  end
end

test = Player.new
test.root.output
