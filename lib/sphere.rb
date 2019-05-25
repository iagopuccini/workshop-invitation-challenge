require_relative "geometric_base"

class Sphere < GeometricBase
  attr_writer :radius
  
  def initialize(radius)
    @radius = radius
  end

  def area
    radius2 = exponentiation(@radius, 2)
    result = multiply(4, PI)
    multiply(radius2, result)
  end

  def perimeter
    diametro = multiply(2, @radius)
    multiply(PI, diametro)   
  end

  def volume
    result = multiply(4, PI)
    radius3 = exponentiation(@radius, 3)
        result2 = multiply(result, radius3)
    divide(result2, 3)
    #4/3.0 * PI * @radius ** 3
  end
end
