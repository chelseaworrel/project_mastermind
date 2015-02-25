require_relative 'mastermind'

class Printer

  def greeting
    print "\e[2J\e[f"

    puts'  /\/\   __ _ ___| |_ ___ _ __ _ __ ___ (_)_ __   __| | '.blue
    puts' /    \ / _` / __| __/ _ \  __|  _ ` _ \| |  _ \ / _` | '.green
    puts'/ /\/\ \ (_| \__ \ ||  __/ |  | | | | | | | | | | (_| | '.red
    puts'\/    \/\__,_|___/\__\___|_|  |_| |_| |_|_|_| |_|\__,_| '.yellow

    puts "\n"
    puts "\n"
    puts "\n"

  end

  def menu
    puts "MAIN MENU: Would you like to (p)lay, read the (i)nstructions, (c)heat or (q)uit? -ENTER A COMMAND:"
  end

  def play_game
  #    puts "I have generated a beginner sequence with four elements made up of:
  #    (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  #
  #  What's your guess?: #{mastermind.sequence}"
  end

  def instructions
    puts "INSTRUCIONS:

    Once the game begins, a random mystery sequence code will be generated
    consisting of the following 4 elements:
    (r)ed, (y)ellow, (g)reen, (b)lue.


    This code will be hidden from you.
    Your task is to guess the code AS FAST AS YOU CAN!


    Along the way,you will be given hints about the code,
    until you guess the correct code.

    Guess wisely, let's begin...."
    # return play_or_quit
  end

  # def play_or_quit
  #   puts "(p)lay or (q)uit"
  #   input = gets.chomp
  #   if input == "p"
  #     menu
  #   end



  def cheat
  #If it’s 'c' or 'cheat' then print out the current secret code
  end

  def quit
    puts "Quitting...Goodbye" #figure out if you need to exit
    return menu
  end

  def make_guess
      puts "Enter your guess:"
  end

  def winner
    puts "Winner!"
  end

  def guess_again
    puts "Guess again!"
  end
end

printer = Printer.new
