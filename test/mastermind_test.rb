require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class MastermindTest < Minitest::Test
  def test_it_exists
    assert MastermindTest
  end

  def test_it_wins
    mm = Mastermind.new
    result = mm.execute("BBGB")
    assert result.downcase.include?("win")
  end

  def test_it_has_a_greeting
    mm = Mastermind.new
    assert mastermind.greeting ("Welcome to Mastermind")
  end

  def test_it_can_play
  end

  def test_it_can_quit
  end

  def test_it_can_shuffle
  end

  def test_it_can_play
  end

  def test_it_has_instructions
  end

  def test_you_can_cheat
  end
  
end
