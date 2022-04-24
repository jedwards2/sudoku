require 'colorize'

class Tile
  attr_reader :given, :value

  def initialize(given, value)
    @given = given
    @value = value
  end

  def to_s
    @value.to_s
  end

  def set(value)
    if !@given
      @value = value
    end
  end
end