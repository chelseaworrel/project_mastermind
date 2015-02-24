require_relative'response'
require_relative 'mastermind'
require_relative 'printer'

mastermind = Mastermind.new
printer = Printer.new
response = nil

printer.greeting
printer.menu

input = gets.chomp

  if input == 'i'
    printer.instructions 

  elsif input == 'q'
    printer.quit

  elsif input == 'p'
    printer.play_game
    mastermind = Mastermind.new #instatiate the game
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  What's your guess?" "#{mastermind.sequence}" #when you are ready delete :#{mastermind.sequence}

  until response && response.status == :won
    print "> "
    input = gets.chomp
    response = mastermind.execute(input)
    puts response.message
  end


end
#at some point: call your Time class
#timer = Time.new
