class Computer
  attr_accessor :game_board, :full_game_board #for testing
  def initialize
  @game_board = {
    "A" => {"1" => "", "2" => "", "3" => "", "4" => ""},
    "B" => {"1" => "", "2" => "", "3" => "", "4" => ""},
    "C" => {"1" => "", "2" => "", "3" => "", "4" => ""},
    "D" => {"1" => "", "2" => "", "3" => "", "4" => ""}
  }
  @full_game_board = { #for testing
    "A" => {"1" => "H", "2" => "H", "3" => "H", "4" => "H"},
    "B" => {"1" => "H", "2" => "H", "3" => "H", "4" => "H"},
    "C" => {"1" => "H", "2" => "H", "3" => "H", "4" => "H"},
    "D" => {"1" => "H", "2" => "H", "3" => "H", "4" => "H"}
  }
  end

  def output(board=@game_board)
    puts "============="
    puts "  1  2  3  4"
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

  def random_coordinate
    letter = (65 + rand(4)).chr
    number = rand(1..4)
    return "#{letter}#{number}"
  end

  def available?(coordinate, board=game_board)
    board[coordinate[0]][coordinate[1]].empty?
  end

  def letter_next_door?(original, new_location)
    letter_array = [original[0].ord + 1, original[0].ord - 1]
    letter_array.any? {|letter| letter == new_location[0].ord}
  end

  def number_next_door?(original, new_location)
    num_array = [original[1].to_i + 1, original[1].to_i - 1]
    num_array.any? {|num| num == new_location[1].to_i}
  end

  def ship_creator(size)
    #until ship.length == size
    #random plus one or minus one based on what is available and not close to a wall
    #if location is available && location
    ship = []
    align_row_or_column = rand(0..1)
    align_up_or_down = rand(0..1) * 2 - 1
  end
  #if ship.empty?
  #if the location is available
  #take that spot
  #if ship length == 1
  def shoot
  end

end
test = Computer.new
puts test.number_next_door?("A3", "A4")
