require 'minitest/autorun'
require './arrayFun.rb'

class ArrayFunTest < MiniTest::Test

  def test_to_create_ArrayFun_class_initializing_with_two_numbers
    @new_array_fun1 = ArrayFun.new(1, 2)
    assert(@new_array_fun1)
  end

  def test_that_ArrayFun_class_is_building_the_arrays_correctly_when_given_a_larger_number_first
    @new_array_fun3 = ArrayFun.new(4, 1)
    @array3 = [4, 3, 2, 1]
    assert_equal(@array3, @new_array_fun3.build_array)
  end

  def test_to_create_a_small_array_with_build_array
    @new_array_fun1 = ArrayFun.new(1, 2)
    @array1 = [1, 2]
    assert_equal(@array1, @new_array_fun1.build_array)
  end

  def test_to_create_a_large_array_with_build_array
    @new_array_fun2 = ArrayFun.new(1, 5)
    @array2 = [1, 2, 3, 4, 5]
    assert_equal(@array2, @new_array_fun2.build_array)
  end

  def test_to_test_make_sure_array_saves_to_attr_accessor_after_build_array
    @new_array_fun2 = ArrayFun.new(1, 5)
    @new_array_fun2.build_array
    @array2 = [1, 2, 3, 4, 5]
    assert_equal(@array2, @new_array_fun2.array)
  end

  def test_that_shuffle_array_returns_an_array
    @new_array_fun2 = ArrayFun.new(1, 5)
    @new_array_fun2.build_array
    @array2 = [1, 2, 3, 4, 5]
    assert_equal(@array2.class, @new_array_fun2.shuffle_array.class)
  end

  def test_that_shuffle_array_saves_to_attr_accessor
    @new_array_fun2 = ArrayFun.new(1, 5)
    @new_array_fun2.build_array
    @new_array_fun2.shuffle_array
    assert(@new_array_fun2.shuffled_array)
  end

  def test_that_compare_array_returns_true_or_false
    @new_array_fun2 = ArrayFun.new(1, 5)
    @new_array_fun2.build_array
    @new_array_fun2.shuffle_array
    assert(@new_array_fun2.compare_array.class)
  end

  def test_that_check_statement_returns
    @new_array_fun2 = ArrayFun.new(1, 5)
    @new_array_fun2.build_array
    @new_array_fun2.shuffle_array
    assert(@new_array_fun2.check_statement.class)
  end

  # def test_that_stack_level_error_does_not_show_up
  #   # Need to research which assert to use, if any
  #   @new_array_fun4 = ArrayFun.new(0, 10)
  #   @new_array_fun4.build_array
  #   @new_array_fun4.shuffle_array
  #   @new_array_fun4.check_statement
  # end

end