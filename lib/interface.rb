module Interface

  def message_what_is_your_name
    puts "What is your name?"
    name_answer = gets.chomp
    return name_answer
  end

  def message_welcome
    "Welcome to BATTLESHIP\n\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  end

  def message_welcome_choice(choice)
    case choice
    when "p" then puts play_game
    when "i" then puts message_instructions
    when "q" then puts message_exit
    end
  end

  def play_game
  end

  def message_computer_ship_placement
    "I have laid out my ships on the grid.\n
    You now need to layout your two ships.\n
    The first is two units long and the\nsecond is three units long.\n
    The grid has A1 at the top left and D4 at the bottom right.\n
    Enter the squares for the two-unit ship:"
  end

  def message_player_ship_placement
    puts "Where do you want to place your ships?"
    answer = gets.chomp
  end

  def message_player_shoot
    puts "Where do you want to fire?"
    answer = gets.chomp
  end

  def message_player_hit
    "You hit an enemy ship!"
  end

#create
  def message_player_sunk
  # "You sunk a #{size} ship!"
  end

  def message_sorry
    "Sorry, the computer won!"
  end

  def message_winner
    "You won!"
  end

#create
  def message_shots_fired
  #  "#{winner_shots_counter}"
  end

#create
  def message_time_alloted
    # "time since start #{time}"
  end

  def message_instructions
    return "This game is called battleship.  The player places \ntwo ships on a 4x4 board, as does a computer opponent, \nand you shoot board corrdinates to sink your opponent's battleship.  \nWhomever destroys their opponent's ships first wins!\n"

  end

  def message_exit
    return "Thank you for playing!"
  end

end
