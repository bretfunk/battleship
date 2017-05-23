class Interaction
  attr_accessor
  def initialize
  end

  def welcome_message
    return "Welcome to BATTLESHIP\n\n\n" "Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  end

  def instructions
    return "These are the instructions:"
  end

  def quit_method
    return "Thank you for playing."
  end

  def two_unit_ship(size=2)
  end
  def three_unit_ship(size=3)
  end

  def player_ship_placement_message
    return "I have laid out my ships on the grid.\n
      You now need to layout your two ships.\n
      The first is two units long and the\n
      second is three units long.\n The grid has A1
      at the top left and D4 at the bottom right.\n\n
      Enter the squares for the two-unit ship:"
  end

  def play_or_not(play)
    case play
      when "p"
        return "play method"
      when "i"
        return "information method"
      when "q"
        return "quit method"
      else
        return "not valid"
    end
  end

  def play_method

  end


end


  # prompt = "> "
  #
  # while (input = gets.chomp)
  #   break if input == "q"
  #   system(input)
  #   print prompt
  # end


test = Interaction.new
puts test.welcome_message
#play? = gets.chomp.downcase
