class ClockChecker 

  def self.up_to_date employee
     now = Time.now
     last_history = employee.hour_histories.all(limit: 1).pop 
     if(last_history)
           if(last_history.day.to_date == now.to_date)
		return last_history
           else
	    complete(last_history, employee)
	    last_history = HourHistory.new
	   end
     else
        last_history = HourHistory.new
        last_history.day = now 
	last_history
     end
  end 

  def self.complete(hist, employee)
      return unless(hist.arrived)
      if (hist.went_lunch && hist.came_lunch && !hist.went_away)
        hist.went_away = hist.arrived.advance(
                                  hours: (employee.workload + 1))
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
        if(now > employee.lunch &&
                           now < employee.lunch.advance(hours:1))
            hist.went_lunch = now
        else
          hist.went_away = now
        end
     end
     employee.hour_histories.push(hist)
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
 end
end
