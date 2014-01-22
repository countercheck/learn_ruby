class Game

  def initialize
    @total = 0
    @i = 0
  end

  def score(frames)
    last_frame = frames.length
    if frames[-3] == 10
      last_frame -=2
    elsif frames[-3] + frames[-2] == 10 
      last_frame -= 1
    end
        
    while @i < (last_frame)
      break if frames[@i+1] == nil 
      
      if frames[@i] == 10 then strike
      elsif frames[@i] + frames[@i+1] == 10 then spare
      else then bad_luck 
      end

      @i +=1
    end
    @total
  end

  def strike
    @total = @total + frames[@i] + frames[@i+1] + frames[@i+2]
  end

  def spare
    @total = @total + frames[@i] + frames[@i +1] + frames[@i + 2]
    @i += 1
  end

  def bad_luck
    @total = @total + frames[@i] + frames[@i+1]
    @i += 1
  
end