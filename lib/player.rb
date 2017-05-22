class Player
  attr_accessor :game_board, :full_game_board
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

  def full_game_board
    @full_game_board
  end

  def what_is_your_name
    puts "What is your name?"
    name_answer = gets.chomp
    return name_answer
  end

  def player_ship_placement
    puts "Where do you want to place your ships?"
    answer = gets.chomp
  end

  def player_shoot
    puts "Where do you want to shoot?"
    answer = gets.chomp
  end

  def available?(coordinate, board=game_board)
    board[coordinate[0]][coordinate[1]] == " "
  end

  def ship_hit?(coordinate, board=game_board)
    board[coordinate[0]][coordinate[1]] == "S"
  end

  def player_shoot(coordinate) #might have to change return to puts
    if available?(coordinate)
      if ship_hit?(coordinate)
        return "Hit!"
      else
        return "Miss!"
      end
    else
      return "Not a valid location"
    end
  end

end
