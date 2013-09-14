require 'minitest/autorun'
require './arrayFun.rb'

class ArrayFunTest < MiniTest::Test

  def setup
    @new_array_fun1 = ArrayFun.new(1, 2)
    @new_array_fun2 = ArrayFun.new(1, 5)
    @array1 = [1, 2]
    @array2 = [1, 2, 3, 4, 5]
  end

  def test_to_create_ArrayFun_class_initializing_with_two_numbers
    assert(@new_array_fun1)
  end

  def test_to_create_a_small_array_with_BuildArray
    assert_equal(@array1, @new_array_fun1.BuildArray)
  end

  def test_to_create_a_large_array_with_BuildArray
    assert_equal(@array2, @new_array_fun2.BuildArray)
  end

  def test_to_test_make_sure_array_saves_to_attr_accessor_after_BuildArray
    @new_array_fun2.BuildArray
    assert_equal(@array2, @new_array_fun2.array)
  end

  def test_that_ShuffleArray_returns_an_array
    @new_array_fun2.BuildArray
    assert_equal(@array2.class, @new_array_fun2.ShuffleArray.class)
  end

  def test_that_ShuffleArray_saves_to_attr_accessor
    @new_array_fun2.BuildArray
    @new_array_fun2.ShuffleArray
    assert(@new_array_fun2.shuffled_array)
  end

  def test_that_CompareArrays_returns_true_or_false
    @new_array_fun2.BuildArray
    @new_array_fun2.ShuffleArray
    assert(@new_array_fun2.CompareArray.class)
  end

  def test_that_CheckStatement_returns
    @new_array_fun2.BuildArray
    @new_array_fun2.ShuffleArray
    assert(@new_array_fun2.CheckStatement.class)
  end

end