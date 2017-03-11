def get_days(year, month)
    month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if month == 2 # 2月のとき
      # 閏年のときはdaysに29を代入
      # それ以外はdaysに28を代入
    else
      days = month_days[month - 1]
    end

    return days
  end

  puts "年を入力してください："
  year = gets.to_i
  puts "月を入力してください："
  month = gets.to_i

  days = get_days(year, month)
  puts "#{year}年#{month}月は#{days}日間あります"
