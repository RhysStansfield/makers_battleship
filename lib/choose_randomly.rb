module ChooseRandomly

  def choose_randomly
   (0..9).to_a.sample
  end

  def x_randomiser
    choose_randomly
  end

  def y_randomiser
    choose_randomly
  end

end