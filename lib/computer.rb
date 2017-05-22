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

  def computer_shoot
    shot = random_coordinate
    if available?(shot)
      shot
    else
      computer_shoot
    end
  end

  def close_numbers?(size, array)
    just_numbers = []
    array.each {|location| just_numbers << location[1].to_i}
    just_numbers = just_numbers.sort
    just_numbers.last - just_numbers.first == size - 1
  end

  def close_letters?(size, array)
    just_letters = []
    array.each {|location| just_letters << location[0]}
    just_letters = array.map{ |letter| letter.ord}.sort
    just_letters.last - just_letters.first == size - 1
  end

  def same_num?(array)
    array.all? {|location| array[0][1] == location[1]}
  end

  def same_letter?(array)
    array.all? {|location| array[0][0] == location[0]}
  end

end
