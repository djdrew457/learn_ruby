
class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    mintues = (@seconds / 60) % 60
    hours = (@seconds / 3600)

     "#{padded(hours)}:#{padded(mintues)}:#{padded(seconds)}"
  end
  
  def padded(num)
    return '0' + num.to_s if num < 10
    return num.to_s if num >= 10
  end
end
