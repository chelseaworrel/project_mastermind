require "colorize"
require_relative "mastermind"
require_relative "printer"

class Response
  attr_reader :message, :status

  def initialize(inputs)
    @message = inputs[:message]
    @status  = inputs[:status]
  end



  # def evaluate_guess(guess)
  #  resp = Response.new
  #
  #  if guess != @sequence
  #   resp.signal = :keep_going
  #   resp.message = :guess_again
  #  else
  #    resp.signal = :stop
  #    resp.message = :winner
end
