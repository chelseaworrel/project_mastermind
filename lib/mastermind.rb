require_relative 'response'
require_relative 'printer'

class Mastermind
attr_reader :sequence
attr_accessor :code

  def initialize
    @sequence = %w(r r r r g g g g b b b b y y y y)
    @code = []
  end

  def create_code
    4.times do
      @code << @sequence.sample
    end
    @code
  end

  def check_colors(input)
    input_to_array = input.chars
    "does #{@code} equal #{input_to_array}?" #this is an example...need to figure out enumerable
  end


  def check_positions
  end

  def guess(input)
     if input == @sequence
       puts "Correct!"
     elsif input != @sequence
       puts "Keep guessing"
     end
  end
 #  def evaluate_guess(guess)
 #   resp = Response.new
 #
 #   if guess != @sequence
 #    resp.signal = :continue
 #    resp.message = :guess_again
 #   else
 #     resp.signal = :stop
 #     resp.message = :winner
 #  end
 #   return resp
 # end

  # def execute(input)
  #   sequence = @sequence #find a way to randomize a string with characters R,B,Y,G
  #   if input == @sequence
  #     Response.new(:message => "You Win!", :status => :won)
  #   else
  #     Response.new(:message => "Guess again!", :status => :continue)
  #   end
  # end

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
