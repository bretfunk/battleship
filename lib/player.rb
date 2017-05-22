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
      return "Not valid coordinates"
    end
  end

  def close_numbers?(size, array)
    just_numbers = []
    array.each {|coordinates| just_numbers << coordinates[1].to_i}
    just_numbers = just_numbers.sort
    just_numbers.last - just_numbers.first == size - 1
  end

  def close_letters?(size, array)
    just_letters = []
    array.each {|coordinates| just_letters << coordinates[0]}
    just_letters = array.map{ |letter| letter.ord}.sort
    just_letters.last - just_letters.first == size - 1
  end

  def same_num?(array)
    array.all? {|coordinates| array[0][1] == coordinates[1]}
  end

  def same_letter?(array)
    array.all? {|coordinates| array[0][0] == coordinates[0]}
  end

  def all_coordinates_avaiable?(array)
    array.all? {|coordinates| self.available?(coordinates)}
  end

  def ship_inserter(array, board=game_board)
    array.each {|position| board[position[0]][position[1]] = "S"}
  end

  def player_ship_request(size, request)
    if ship_creator_filter(size, request) && all_coordinates_avaiable?(request)
        ship_inserter(request)
    else
      return "Not valid coordinates"
    end
  end

  def ship_creator_filter(size, ship)
    if (close_letters?(size, ship) && same_num?(ship)) || (close_numbers?(size, ship) && same_letter?(ship))
      true
    else
      false
    end
  end


end
