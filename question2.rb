def get_days(year, month)
    month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if month == 2
      if year % 4 == 0                         # 年が4で割り切れること
        if year % 100 == 0 && year % 400 != 0  # 年が100で割り切れて400で割り切れない場合
          days = 28 # 閏年でない
        else
          days = 29 # 閏年
        end
      else
        days = 28   # 閏年でない
      end
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


  require "date"

  date = Date.new(2000) # => 2000年を表すDateクラスのインスタンス
  puts date.leap?       # => 閏年なのでtrueが返ってくる

  date = Date.new(2001) # => 2001年を表すDateクラスのインスタンス
  puts date.leap?       # => 閏年ではないのでfalseが返ってくる