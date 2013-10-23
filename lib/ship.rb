require_relative 'choose_randomly'

class Ship

  include ChooseRandomly

  attr_reader :size

  def initialize size = 3
    @size = size.to_i
    @size = 5 if size > 5
  end

  def choose_initial_position
   [x_randomiser, y_randomiser]
  end

  def choose_initial_direction
    random = choose_randomly * 2
    return 0 if (0..4).include? random
    return 1 if (5..9).include? random
    return 2 if (10..14).include? random
    return 3 if (15..19).include? random
  end

end