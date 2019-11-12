require 'date'

def getdates(start_date, end_date, day)
    diferences = end_date.month - start_date.month
    total_months = diferences + 1
    dates = []
    month = 1
    while month <= total_months do
      dates.push(Date.new(start_date.year, month, day).strftime("%d %b %y")) 
      month += 1
    end
    date
end

getdates(Date.new(2019, 01, 1), Date.new(2019, 04, 6), 3)
