require 'pry'

OPTIONS = { "p" => "paper", "r" => "rock", "s" => "scissors" }
replay = ""
puts "Hi! Play Rock, Paper, Scissors with me!"

loop do
  begin
    puts "Choose one of the following... (P/R/S)"
    player_choice = gets.downcase.chomp
    computer_choice = OPTIONS.keys.to_a.sample
  end until OPTIONS.has_key?(player_choice)

  if player_choice == computer_choice
    puts "You both chose #{OPTIONS[player_choice]}! It's a tie!"
  elsif (player_choice == "p" && computer_choice == "r") || (player_choice == "r" && computer_choice == "s") || (player_choice == "s" && computer_choice == "p")
    puts "Nice - you chose #{OPTIONS[player_choice]} and computer chose #{OPTIONS[computer_choice]}! You win!"
  else
    puts "Aww - you chose #{OPTIONS[player_choice]} and computer chose #{OPTIONS[computer_choice]}! You lose :("
  end
  puts "Want to play again? (Y/N)"
  replay = gets.chomp
  break if replay.downcase != "y" || nil
end