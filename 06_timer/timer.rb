class Timer
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    hours = 00
    minutes = 00
    seconds = @seconds
    while seconds >= 60
      minutes += 1
      seconds -= 60
      while minutes >= 60
        hours += 1
        minutes -= 60
      end
    end
    (hours < 10 ? '0' : '') + hours.to_s + ':' + (minutes < 10 ? '0' : '') + minutes.to_s + ':' + (seconds < 10 ? '0' : '') + seconds.to_s
  end
end
