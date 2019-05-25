require_relative "geometric_base"

class TriangleRectangle < GeometricBase
  attr_writer :height, :base

  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    result = multiply(@base, @height)
    divide(result, 2)
  end

  def perimeter
    base2 = exponentiation(@base, 2)
    height2 = exponentiation(@height, 2)
    c = sum(base2, height2)
    c_reduzido = Math.sqrt(c)
    soma = sum(@base, @height)
    sum(soma, c_reduzido)
  end
end
