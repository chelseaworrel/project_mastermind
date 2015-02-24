require_relative 'response'
require_relative 'printer'

class Mastermind
attr_reader :sequence

  def initialize
    @sequence = ["R","B","Y","G"].shuffle
  end

  def execute(input)
    sequence = @sequence #find a way to randomize a string with characters R,B,Y,G
    if input == @sequence
      Response.new(:message => "You Win!", :status => :won)
    else
      Response.new(:message => "Guess again!", :status => :continue)
    end
  end

end

class Time
attr_reader :start, :finish

  def initialize
    @start = "nil"
    @finish = "nil"
  end

  def start_timer
    @start = Time.now
  end

  def finish_timer
    @finish = Time.now
  end

  def elapsed_time
    @finish - @start
  end
end
