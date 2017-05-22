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

#maybe this should be in board and not computer
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

  def computer_shoot
    shot = random_coordinate
    if available?(shot)
      shot
    else
      computer_shoot
    end
  end

  def computer_ship_creator(size)
    ship = []
    until ship.length == size
      random = random_coordinate
      ship << random unless available?(random) == false || ship.include?(random)
    end
    ship_creator_filter(size, ship) ? ship_inserter(ship) : computer_ship_creator(size)
  end

  def ship_creator_filter(size, ship, num=num)
    num = rand(1..2)
    if num == 1 && (close_letters?(size, ship) && same_num?(ship))
      true
    elsif num == 2 && (close_numbers?(size, ship) && same_letter?(ship))
      true
    else
      false
    end
  end

  def ship_inserter(array, board=game_board)
    array.each {|position| board[position[0]][position[1]] = "S"}
  end

#need to change this board to players's board
#or move methods to a shared space so both can use
#if so need to change tests too
  def hit_miss_inserter(board=game_board)
    shot = computer_shoot
    if ship_hit?(shot) == true
      board[shot[0]][shot[1]] = "H"
    else
      board[shot[0]][shot[1]] = "M"
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

end
