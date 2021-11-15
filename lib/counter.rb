require 'date'

class CountDays
  
  def next_birthday(birthdate)
    bday = birthdate.split('-').map(&:to_i)
    bday_date = Date.new(bday[0], bday[1], bday[2])
    age = (Date.today.strftime("%Y").to_i) - (bday_date.strftime("%Y").to_i)
    days_until = bday_date.next_year(age)
  end

  def days_until(birthdate)
    days = ((next_birthday(birthdate) - Date.today).to_i)
    days.negative? ? days + 365 : days
  end

  def another_day?(birthdate)
    days_until(birthdate) >= 1
  end

  def is_today?(birthdate)
    days_until(birthdate) == 0
  end
end


days = CountDays.new
# p days.next_birthday("1998-08-14")
# p days.days_until("1998-08-14")
# p days.is_today?("1998-08-14")
# p days.another_day?("1998-08-14")
