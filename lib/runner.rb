require './lib/mastermind'
require "./lib/runner"

mastermind = Mastermind.new
response = nil

mastermind.greeting
mastermind.menu

input = gets.chomp

if input == 'i'
  mastermind.instructions
end


if input == 'p'
  mastermind.play_game
  mastermind = Mastermind.new #instatiate the game
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
What's your guess?"#: #{mastermind.sequence}" #when you are ready delete :#{mastermind.sequence}

until response && response.status == :won
  print "> "
  input = gets.chomp
  response = mastermind.execute(input)
  puts response.message
end

elsif input == 'q'
  mastermind.quit
end
