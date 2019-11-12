require 'date'

def find_dates(start_date, end_date, day)
    differences = end_date.month - start_date.month
    total_months = differences + 1
    dates = []
    month = 1
    while month <= total_months do
      dates.push(Date.new(start_date.year, month, day).strftime("%d %b %y")) 
      month += 1
    end
    dates
end

find_dates(Date.new(2019, 01, 1), Date.new(2019, 04, 6), 3)
