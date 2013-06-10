class ClockChecker 

  def self.up_to_date employee
     now = Time.now
     last_history = employee.hour_histories.all.pop 
     if(!last_history)
        last_history = HourHistory.new
        last_history.day = now 
	last_history
     else
       if(true) #if(last_history.day.today?)
            return last_history
        else
	    complete(last_history, employee)
	    last_history = HourHistory.new
            last_history.day = now 
	    last_history
	end
     end
  end 

  def self.complete(hist, employee)
      if(hist.arrived == nil)
	  hist.difference = employee.workload * 360
          hist.save
      else
        hist.went_away = hist.arrived.advance(hours: employee.workload) unless hist.went_away
	hist.difference = hist.went_away - hist.arrived - (1 *360) 
      end
  end


  def self.check_out employee
      now = Time.now
      hist = up_to_date employee
      if employee.class == HourBankEmployee
         if hist.went_lunch
          hist.went_away  = now 
         else
            hist.went_lunch = now
         end
      else
        if(now.to_s(:time) > employee.lunch.to_s(:time) &&
         now.to_s(:time) < employee.lunch.advance(hours:1).to_s(:time))
            hist.went_lunch = now
        else
          hist.went_away = now
        end
     end
     employee.hour_histories.push(hist)
     employee.save
  end

  def self.check_in employee
      now = Time.now
      hist = up_to_date employee
      if employee.class == HourBankEmployee
        if hist.arrived
          hist.came_lunch  = now 
        else
          hist.arrived = now
        end
      else
        if (hist.went_lunch && now > employee.lunch.advance(hours:1))
            hist.came_lunch = now
        else
          hist.arrived = now
        end
     end
     employee.hour_histories.push(hist)
     employee.save
 end
end
