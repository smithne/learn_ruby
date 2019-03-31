class Timer
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize()
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds_rem = (@seconds - hours * 3600 - minutes * 60)
    return ("%02d" % hours) + ":" + ("%02d" % minutes) + ":" +  ("%02d" % seconds_rem)
  end


end
