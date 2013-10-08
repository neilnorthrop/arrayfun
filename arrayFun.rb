class ArrayFun
  attr_accessor :num1, :num2, :array, :shuffled_array, :counter, :reverse, :error

  def initialize(num1, num2)
    if num1 > num2
      @num1 = num2
      @num2 = num1
      @reverse = true
    else
      @num1 = num1
      @num2 = num2
    end
    @counter = 0
    @error = []
  end

  def build_array
    if reverse == true
      @array = (num1..num2).to_a.reverse
    else
      @array = (num1..num2).to_a
    end
  end

  def shuffle_array
    @shuffled_array = @array.shuffle
  end

  def compare_array
    @array == @shuffled_array
  end

  def check_statement
    GC.start
    begin
      if compare_array()
        print_counter().to_s
      else
        shuffle_array()
        counter += 1
        check_statement()
      end
    rescue SystemStackError => e
      @error << e.message
      retry
    end
  end

  def print_counter
    puts counter
  end

end









