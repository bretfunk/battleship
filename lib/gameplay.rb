module Gameplay

  def computer_new_ship(size)
    computer.computer_ship_creator(size)
  end

  def computer_hit_or_miss_inserter
    computer.hit_miss_inserter
  end

  def player_output
    player.player_board.output
  end

  def player_ship_output
    player.player_board.ship_output
  end

  def player_shoot(coordinate)
    player.player_shoot(coordinate)
  end

  def player_ship_requests(size, request)
    player.player_ship_request(size, request)
  end

  def computer_ship_output
    computer.computer_board.ship_output
  end

  def computer_output
    computer.computer_board.output
  end

  def player_shots
    player.player_shots
  end

  def player_hits
    player.hit_counter
  end

  def computer_shots
    computer.computer_shots
  end

  def computer_hits
    computer.hit_counter
  end

end
