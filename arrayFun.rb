# Create a Class that will instantiate with 2 numbers
class ArrayFun
  attr_accessor :num1, :num2, :array, :shuffled_array, :counter
  # Initialize with 2 numbers
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @counter = 0
  end
  # Build an Array out of two numbers
  def BuildArray
    @array = (@num1..@num2).to_a
  end
  # Shuffle the Array
  def ShuffleArray
    @shuffled_array = @array.shuffle
  end
  # Check to see if the original Array and the shuffled Array are equal to each other
  def CompareArray
    (array == shuffled_array)
  end

  def CheckStatement
    if CompareArray()
      # If so, exit and print out counter
      PrintCounter().to_s
    else
      # If not, shuffle again and add 1 to a Counter
      ShuffleArray()
      @counter = @counter + 1
      # Repeat until original Array and shuffled Array are equal
      # Check again to see if the original Array and the shuffled Array are equal to each other
      CheckStatement()
    end
  end

  # Print out Counter
  def PrintCounter
    puts @counter
  end

end









