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
  #needs to have his own board of shots, should just add the player right away
  attr_accessor :name, :computer_board, :computer_ships, :computer_shots
  def initialize
    @name = "Computer"
    @computer_ships = []
    @computer_shots = []
    @computer_board = Board.new #to track hits and misses, maybe an array is better
  end

  def computer_board
    @computer_board.game_board
  end

  def computer_shots
    @computer_shots
  end

  def computer_output
    #might not need this
    @computer_board.output
  end

  def output #pick one of these two
    @computer_board.output
  end

  def computer_ships
    @computer_ships
  end

  def random_coordinate
    letter = (65 + rand(4)).chr
    number = rand(1..4)
    return "#{letter}#{number}"
  end

  def computer_shoot(random_coordinate, computer_ship)
    #don't know if this works
    #this can only be computer because the human will manually enter ships and hits
    hit = false
    computer_ships.each do |ship|
      hit = true unless computer_ship != random_coordinate
    end
    return hit
  end

  def add_ship(coordinates=random_coordinate, board=computer_board, current_ships=computer_ships)
    #need to add something so it doesn't go to somewhere already occupied, need to do this for the random shooter too, sometimes goes to same place
    coordinates = random_coordinate
    board[coordinates[0]][coordinates[1]] = "S"
    current_ships << coordinates
  end

  def computer_ship_search(coordinates)
ß
  end

  def add_two_unit_ship(coordinates=random_coordinate, board=computer_board, current_ships=computer_ships)
    #until coordinates != current_ships.any? {|ship| ship !=}
      #need to add something so it doesn't go to somewhere already occupied, need to do this for the random shooter too, sometimes goes to same place
      coordinates = random_coordinate
      board[coordinates[0]][coordinates[1]] = "S"
      current_ships << coordinates

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
      "A" => {"1" => "", "2" => "", "3" => "", "4" => ""},
      "B" => {"1" => "", "2" => "", "3" => "", "4" => ""},
      "C" => {"1" => "", "2" => "", "3" => "", "4" => ""},
      "D" => {"1" => "", "2" => "", "3" => "", "4" => ""}
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
test = Battleship.new
puts test.output
#test.game_board["A"]["1"] = "S"
#test.add_ship
#puts test.computer_output
#test.add_ship
test2 = Computer.new
