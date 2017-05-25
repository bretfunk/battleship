require './lib/board'

class Player
  attr_accessor :player_board, :opponent_board, :hit_counter, :player_shots
  def initialize(opponent_board=nil)
    @player_board = Board.new
    @hit_counter = 0
    @opponent_board = opponent_board
    @player_shots = 0
  end

  def game_board_available?(coordinate, board=player_board.game_board)
    board[coordinate[0]][coordinate[1]] == " "
  end

  def ship_board_available?(coordinate, board=player_board.ship_board)
    board[coordinate[0]][coordinate[1]] == " "
  end

  def ship_hit?(coordinate, board=opponent_board.ship_board)
    board[coordinate[0]][coordinate[1]] == "S"
  end

  def player_shoot(coordinate, board=opponent_board.game_board)
      if coordinate.nil?
        puts "not a valid coordinate"
      elsif game_board_available?(coordinate) == false
        puts "not a valid coordinate"
      elsif ship_hit?(coordinate)
        @player_shots += 1
        @hit_counter += 1
        board[coordinate[0]][coordinate[1]] = "H"
        puts "Hit!"
      else
        @player_shots += 1
        board[coordinate[0]][coordinate[1]] = "M"
        puts "Miss!"
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
    array.all? {|coordinates| self.game_board_available?(coordinates)}
  end

  def ship_inserter(array, board=player_board.ship_board)
    array.each {|position| board[position[0]][position[1]] = "S"}
  end

  def player_ship_request(size, request)
    if ship_creator_filter(size, request) && all_coordinates_avaiable?(request)
        ship_inserter(request)
    else
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
