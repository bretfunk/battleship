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
  attr_accessor :name, :player_ships
  attr_reader
  def initialize(name="Player 1")
    @name = name
    @player_ships = []
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

  def player_ships
    return @player_ships
  end
end

class Computer
  #needs to have his own board of shots, should just add the player right away
  attr_accessor :name, :computer_board, :computer_ships
  def initialize
    @name = "Computer"
    @computer_ships = []
    @computer_board = Board.new #to track hits and misses
  end

  def computer_board
    @computer_board.game_board
  end

  def computer_output
    #might not need this
    @computer_board.output
  end

  def output #pick one of these two
    @computer_board.output
  end

  def computer_ships
    #maybe return one at a time
    return @computer_ships
  end

  def random_shot
    letter = (65 + rand(4)).chr
    number = rand(1..4)
    return "#{letter}#{number}"
  end

  def computer_shoot(random_shot, computer_ship)
    #don't know if this works
    #this can only be computer because the human will manually enter ships and hits
    hit = false
    computer_ships.each do |ship|
      hit = true unless computer_ship != random_shot
    end
    return hit
  end

  def add_ship(coordinates=random_shot, board=computer_board)
    #need to add something so it doesn't go to somewhere already occupied, need to do this for the random shooter too, sometimes goes to same place
    coordinates = random_shot
    board[coordinates[0]][coordinates[1]] = "S"
    @computer_ships << coordinates
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
      "A" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "B" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "C" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."},
      "D" => {"1" => ".", "2" => ".", "3" => ".", "4" => "."}
    }
  end

  def output(board=@game_board)
    puts "========="
    puts "  1 2 3 4"
    print "A"; board["A"].values.each {|x| print " " + x}.join; print "\n"
    print "B"; board["B"].values.each {|x| print " " + x}.join; print "\n"
    print "C"; board["C"].values.each {|x| print " " + x}.join; print "\n"
    print "D"; board["D"].values.each {|x| print " " + x}.join; print "\n"
    puts "========="
  end
end
test = Battleship.new
#puts test.output
#test.game_board["A"]["1"] = "S"
#test.add_ship
#puts test.computer_output
#test.add_ship
test2 = Computer.new
test2.add_ship
test2.add_ship
puts test2.computer_output
puts test2.computer_ships.inspect
