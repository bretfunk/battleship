module Interface

  def message_what_is_your_name
    puts "What is your name?"
    name_answer = gets.chomp
    return name_answer
  end

  def message_welcome
    puts "Welcome to BATTLESHIP\n\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  end

  def message_welcome_choice(choice)
    choice = choice.downcase
    case choice
    when "p" then puts message_play
    when "i" then puts message_instructions
    when "q" then abort
    else puts "not a valid choice"
    end
  end

  def message_computer_ship_placement
    puts "I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the \nsecond is three units long.\nThe grid has A1 at the top left and D4 \nat the bottom right.\n\nEnter the squares for the two-unit ship: \n\n"
  end

  def message_player_three_ship_placement
    puts "Where do you want to place your three-unit ship?"
  end

  def message_player_shoot
    puts "On what coordinate do you want to fire?"
  end

  def message_player_hit
    puts "You hit an enemy ship!"
  end

  def message_end_player_turn
    puts "End your turn by pressing ENTER."
  end

#create
  def message_player_sunk
  # "You sunk a #{size} ship!"
  end

  def message_sorry
    puts "Sorry, the computer won!"
  end

  def message_winner
    puts "You won!"
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
    return "In Battleship the player places two ships on a 4x4 board, \nas does a computer opponent, and and each shoot at board \ncorrdinates to sink their opponent's battleship. \nWhomever destroys all of their opponent's ships first wins!\n"
  end

  def message_exit
    return "Thank you for playing!"
  end

  def message_play
    return "Let's play!  Hit enter to continue."
  end


end
