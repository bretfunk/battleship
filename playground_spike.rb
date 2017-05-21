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

  #not working for some reason, keeps having end issues
  def computer_shoot
    shot = random_coordinate
    if available?(shot)
      shot
    else
      computer_shoot
    end 
  end
end

#same problem with this as with close letters
  def array_close_numbers?(size, array)
    just_numbers = []
    array.each {|location| just_numbers << location[1].to_i}
    just_numbers = just_numbers.sort
    just_numbers.last - just_numbers.first == size
  end

#"A" is 65 and "D" is 68, just subtracting one wont fix it for some reason
  def array_close_letters?(size, array)
    just_letters = []
    array.each {|location| just_letters << location[0]}
    just_letters = array.map{ |letter| letter.ord}.sort
    just_letters.last - just_letters.first == size
  end

  def array_same_num?(array)
    array.all? {|location| array[0][1] == location[1]}
  end

  def array_same_letter?(array)
    array.all? {|location| array[0][0] == location[0]}
  end

  def computer_ship_creator(size)
    ship = []
    until ship.length == size
      random = random_coordinate
      ship << random unless available?(random) == false || ship.include?(random)
    end
    #need to create a random method so the or doesn't always go one way
    #only starting with letters
    if array_close_letters?(size, ship) && array_same_num?(ship) || array_close_numbers?(size, ship) && array_same_letter?(ship)
      return ship
    else
      computer_ship_creator(size)
    end
  end
end

test = Computer.new
puts test.computer_shoot
#p test.computer_ship_creator(2)
#p test.array_close_numbers?(3, ["A4", "A1", "A2", "A3"])
#p test.array_close_letters?(3, ["A", "D", "C", "B"])
#puts test.array_same_num?(["A1", "B1", "C1"])
#puts test.array_same_letter?(["A1", "A2", "A3"])

#to do
#test all methods again
#figure out why having these errors
#figure out shoot weird end issue
#start writing an insert method for shoot, hit and miss
#new method for hit or miss, return true or false
