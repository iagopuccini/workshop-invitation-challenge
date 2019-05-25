require_relative "geometric_base"

class Rectangle < GeometricBase
  attr_writer :height, :width

  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    multiply(@height, @width)
  end

  def perimeter
    valor1 = sum(@height, @height)
    valor2 = sum(@width, @width)
    sum(valor1, valor2)
  end
end
