# RubyFun!

> Just a little fun I was having with arrays. The point of this was to
> take an array of numbers and see how many times it would take shuffle
> to rearrange the array of numbers back to the original order.

* Start off with instantiating ArrayFun with 2 numbers.

  ```Ruby
  array = ArrayFun.new(number1, number2)
  ```

* Build an array of your 2 numbers.

  ```Ruby
  array.build_array
  ```

* Shuffle the newly built array.

  ```Ruby
  array.shuffle_array
  ```

* Check the two arrays to and compare if they are the same order.

  ```Ruby
  array.compare_array
  ```

* Let the script automatically check and shuffle. Prints out a counter.

  ```Ruby
  array.check_statement
  ```