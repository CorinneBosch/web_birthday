require 'date'

class CountDays
  
  def next_birthday(birthdate)
    bday = birthdate.split('-').map(&:to_i)
    bday_date = Date.new(bday[0], bday[1], bday[2])
    # age = (Date.today.strftime("%Y").to_i) - (bday_date.strftime("%Y").to_i)
    # days_until = bday_date.next_year(age)
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

  def selected_date(date)
    string = date.split('-').map(&:to_i)
    new_date = Date.new(string[0], string[1], string[2])
    new_date.strftime("%d. %B %Y")
  end
end

# class PrintDate
#   def self.selected_date(date)
#     string = date.split('-').map(&:to_i)
#     new_date = Date.new(string[0], string[1], string[2])
#     new_date.strftime("%d. %B %Y")
#   end
# end

# <% def selected_date(date) %>
# <% string = date.split('-').map(&:to_i) %>
# <% new_date = Date.new(string[0], string[1], string[2]) %>
# <% new_date.strftime("%d. %B %Y") %>
# <% end %>

# <h2>Showing rooms available from <% one=(@filtered_dates.first).split('-').map(&:to_i) %>


# %> to <%= @filtered_dates.last %></h2>

# bday = PrintDate.selected_date('2021-08-23')
# p bday
# p baba.strftime("%d. %B %Y")