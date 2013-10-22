module Shooting

    def calculate_x_shot array
    x_letter = ('A'..'J').to_a
    x_letter.index(array[0])
  end

  def calculate_y_shot array
    return 9 if array.length == 3
    array[1].to_i - 1
  end

  def calculate_shot x, y
    shot = ' '
    if rows[y][x] == 's'
      shot = hit! y, x
    else
      shot = miss! y, x
    end
    shot.dup
  end

  def hit! y, x
    rows[y][x] = 'x'
  end

  def miss! y, x
    rows[y][x] = 'o'
  end
  
end