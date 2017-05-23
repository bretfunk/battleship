module Interface

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
end
