require_relative 'response'

class Mastermind
attr_reader :sequence

  def initialize
    @sequence = ["R","B","Y","G"].shuffle
  end

  def execute(input)
    sequence = "BBGB".upcase #find a way to randomize a string with characters R,B,Y,G
    if input == secret
      Response.new(:message => "You Win!", :status => :won)
    else
      Response.new(:message => "Guess again!", :status => :continue)
    end
  end

  def greeting
    puts "Welcome to Mastermind"
  end

  def menu
    puts "Menu: Would you like to (p)lay, read the (i)nstructions, (c)heat or (q)uit?"
  end

  def play_game
       puts "Play the game"
  end

  def instructions
    puts "instructions" #insert instructions here
  end

  def cheat
    #If it’s 'c' or 'cheat' then print out the current secret code
  end

  def quit
    puts "Quitting...Goodbye" #figure out if you need to exit

  end


end
