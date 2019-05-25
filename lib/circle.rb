require_relative "geometric_base"

class Circle < GeometricBase
  attr_writer :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    result = exponentiation(@radius, 2)
    multiply(PI,result)
  end

  def perimeter
    pi2 = multiply(PI, 2)
    multiply(pi2, @radius)
  end
end
