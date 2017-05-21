class Computer
  attr_accessor :game_board
  def initialize
  @game_board = {
    "A" => {"1" => "", "2" => "", "3" => "", "4" => ""},
    "B" => {"1" => "", "2" => "", "3" => "", "4" => ""},
    "C" => {"1" => "", "2" => "", "3" => "", "4" => ""},
    "D" => {"1" => "", "2" => "", "3" => "", "4" => ""}
  }
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
    board[coordinate[0]][coordinate[1]].empty?
  end

  def shot_already?(coordinate, board=game_board) #prob unnecessary
    !board[coordinate[0]][coordinate[1]].empty?
  end

end
test = Computer.new
puts test.available?("A1")
puts test.shot_already?("A1")
