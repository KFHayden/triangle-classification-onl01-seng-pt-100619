class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    elsif @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      raise TriangleError
    end
      
    if @a == @b && @b == @c
      :equilateral
    elsif (@a != @b) && (@b != @c) && (@a != @c)
      :scalene
    else
      :isosceles
    end
  end
  
  class TriangleError < StandardError
  end

end
