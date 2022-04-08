class Clock
    attr_accessor :hour, :minute
    def initialize(h = 0, m = 0, hour: h, minute: m)
        if (minute >= 60)
            @minute = minute % 60
            hour = hour + minute / 60
        elsif (minute >= 0)
            @minute = minute
        elsif (minute.abs() < 60)
            @minute = 60 + minute
            hour = hour - 1
        elsif (minute.abs() >= 60)
            @minute = -(minute / 60 * 60) + minute
            hour = hour + minute/60
        end

        if (hour < 0)
          @hour = hour.abs() >= 24 ? 24 - (hour.abs() % 24) : 24 + hour
        else
          @hour = hour >= 24 ? hour % 24 : hour
        end
    end
    def to_s
        hour_v = (@hour < 10) ? "0#{@hour}" : "#{@hour}" 
        minute_v = (@minute < 10) ? "0#{@minute}" : "#{@minute}"

        "#{hour_v}:#{minute_v}"
    end
    def +(clock)
      c = Clock.new(hour: self.hour + clock.hour, minute: self.minute + clock.minute)
      c
    end
    def -(clock)
      c = Clock.new(hour: self.hour - clock.hour, minute: self.minute - clock.minute)
      c
    end
    def ==(clock)
      if (self.hour == clock.hour and self.minute == clock.minute)
        c = clock
        c
      else
        false
      end
    end
end

a = Clock.new(1, 100)
puts a