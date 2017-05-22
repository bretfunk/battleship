prompt = "> "

puts "Welcome to BATTLESHIP\n\n\n" "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"


while (input = gets.chomp)
  break if input == "q"
  system(input)
  print prompt
end



def welcome_message
  return "Welcome to BATTLESHIP\n\n\n" "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
end
