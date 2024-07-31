class DayWeek
  def day_of_week(date)
    day, month, year = date.split.map(&:to_i)
    t = [0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5]
    t_leap = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
    is_leap = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    month_code = is_leap ? t_leap[month - 1] : t[month - 1]
    year -= 1 if month < 3
    day_of_week = (day + month_code + year + (year / 4) - (year / 100) + (year / 400)) % 7
    days = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]
    days[day_of_week]
  end
end
