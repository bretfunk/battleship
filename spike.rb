require 'pry'
#don't need a computer board, just check against computer ships

class Battleship
  def initialize
    @player = Player.new
    @computer = Computer.new
    @interface = Interface.new
    @board = Board.new
  end
  #upon running the program run the welcome message

  def output
    @board.output
  end

  def random_shot
    @computer.random_shot
  end

  def add_ship
    @computer.add_ship
  end

  def game_board
    @board.game_board
  end

  # def computer_output
  #   @computer.output
  # end
end

class Player
  attr_accessor :name, :player_ships, :player_shots
  attr_reader
  def initialize(name="Player 1")
    @name = name
    @player_ships = []
    @player_shots = []
  end
#don't need player ships and shots anymore, I will use the hash
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

  def player_ships
    return @player_ships
  end
end

class Computer
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

  def random_coordinate
    letter = (65 + rand(4)).chr
    number = rand(1..4)
    return "#{letter}#{number}"
  end

  def available?(coordinate, board=game_board)
    board[coordinate[0]][coordinate[1]] == " "
  end

  def ship_hit?(coordinate, board=game_board) #make sure you use the correct board
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

  def array_close_numbers?(size, array)
    just_numbers = []
    array.each {|location| just_numbers << location[1].to_i}
    just_numbers = just_numbers.sort
    just_numbers.last - just_numbers.first == size - 1
  end

  def array_close_letters?(size, array)
    just_letters = []
    array.each {|location| just_letters << location[0]}
    just_letters = array.map{ |letter| letter.ord}.sort
    just_letters.last - just_letters.first == size - 1
  end

  def array_same_num?(array)
    array.all? {|location| array[0][1] == location[1]}
  end

  def array_same_letter?(array)
    array.all? {|location| array[0][0] == location[0]}
  end

  def ship_creator_filter(size, ship)
    num = rand(1..2)
    if num == 1 && (array_close_letters?(size, ship) && array_same_num?(ship))
      true
    elsif num == 2 && (array_close_numbers?(size, ship) && array_same_letter?(ship))
      true
    else
      false
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

  def ship_inserter(array, board=game_board)
    array.each {|position| board[position[0]][position[1]] = "S"}
  end

  def hit_miss_inserter(board=game_board) #using computer gameboard for testing purposes
    shot = computer_shoot
    if ship_hit?(shot) == true
      board[shot[0]][shot[1]] = "H"
    else
      board[shot[0]][shot[1]] = "M"
    end
  end
end

class Interface
  def wecome
    puts "Welcome to BATTLESHIP \n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    answer = gets.chomp.downcase
    case answer
      when "p" then self.play
      when "i" then self.instructions
      when "q" then self.quit
    end
  end

  def play
    puts "play"
  end

  def instructions
    puts "instructions"
  end

  def quit
    puts "quiting game"
  end
end

class Board
  attr_accessor :game_board
  def initialize
    @game_board = {
      "A" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "B" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "C" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "},
      "D" => {"1" => " ", "2" => " ", "3" => " ", "4" => " "}
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
end

test = Computer.new
puts test.random_coordinate
