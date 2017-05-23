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

    def game_board
      @game_board
    end

end
