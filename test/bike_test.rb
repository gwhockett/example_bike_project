require 'bundler/setup'
require 'minitest/autorun'
require_relative '../lib/bike'
require 'date'

class BikeTest < Minitest::Test
  def setup
    @bike = Bike.new
  end

  def test_bike_exists
    assert(@bike)
  end

  def test_instance_of_bike
    assert_instance_of(Bike, @bike)
  end

  def test_includes_bike
    a = ["string", 2.0, {:person_name => "Hank"}]
    refute_includes(a, @bike)
    a << @bike
    assert_includes(a, @bike)
  end

  def test_gears
    assert_equal(10, @bike.gears)
  end

  def test_basic_object_comparison
    # to demonstrate what `assert_equal` uses
    skip
    assert_equal(@bike, Bike.new)
  end

  def test_name_is_nil
    assert_nil(@bike.name)
  end

  def test_raise_initialize_with_arg
    assert_raises(ArgumentError) do
      Bike.new("Trek")
    end
  end

  def test_build_date
    build_today = "Build Date: #{Date.today}"
    assert_equal(build_today, @bike.build_date)
  end
end