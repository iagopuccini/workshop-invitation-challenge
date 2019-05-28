require_relative "geometric_base"

class TriangleRectangle < GeometricBase
  attr_writer :height, :base

  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    divide(multiply(@base,@height),2)
  end

  def perimeter
    c = sum(exponentiation(@base, 2), exponentiation(@height, 2))
    sum(sum(@base, @height), Math.sqrt(c))
  end
end
