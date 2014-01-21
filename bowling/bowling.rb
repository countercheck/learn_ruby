class Game

  def score(frames)
    total = 0
    i=0
    last_frame = frames.length
    if frames[-3] == 10
      last_frame -=2
    elsif frames[-3] + frames[-2] == 10 
      last_frame -= 1
    end
        
    while i < (last_frame)
      break if frames[i+1] == nil 
      if frames[i] == 10 
        total = total + frames[i] + frames[i+1] + frames[i+2]
      elsif frames[i] + frames[i+1] == 10
         total = total + frames[i] + frames[i +1] + frames[i + 2]
         i += 1
      else 
        total = total + frames[i] + frames[i+1]
        i += 1
      end
      i +=1
    end
    total
  end

  
end