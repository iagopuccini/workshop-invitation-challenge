require_relative "../lib/sphere"

require "test/unit"

class TestSphere < Test::Unit::TestCase
  def setup
    @sphere = Sphere.new(13)
  end

  def test_area
    expected_value = 2123.71663382684
    assert_equal(expected_value, @sphere.area)

    @sphere.radius = 30

    expected_value = 11309.733552924
    assert_equal(expected_value, @sphere.area)
  end

  def test_perimeter
    expected_value = 81.68140899334
    assert_equal(expected_value, @sphere.perimeter)

    @sphere.radius = 20

    expected_value = 125.66370614360
    assert_equal(expected_value, @sphere.perimeter)
  end

  def test_volume
    expected_value = 9202.772079916307
    assert_equal(expected_value, @sphere.volume)

    @sphere.radius = 40

    expected_value = 268082.5731063467
    assert_equal(expected_value, @sphere.volume)
  end
end
