class Mastermind

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
    "does #{@code} equal #{input_to_array}?"
  end


  def check_positions
  end

end

mm = Mastermind.new
p mm.create_code
p mm.check_colors("rrrr")
