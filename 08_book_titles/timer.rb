class Timer
attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
  time_hash = {hours: @seconds/3600.floor,
              minutes: @seconds % 3600 / 60.floor,
              seconds: @seconds % 3600 % 60}
  time_hash[:hours] < 10 ? time_hash[:hours] = "0#{time_hash[:hours]}" : time_hash[:hours] = "#{time_hash[:hours]}"
  time_hash[:minutes] < 10 ? time_hash[:minutes] = "0#{time_hash[:minutes]}" : time_hash[:minutes] = "#{time_hash[:minutes]}"
  time_hash[:seconds] < 10 ? time_hash[:seconds] = "0#{time_hash[:seconds]}" : time_hash[:seconds] = "#{time_hash[:seconds]}"
  "#{time_hash[:hours]}:#{time_hash[:minutes]}:#{time_hash[:seconds]}" 
  end
end