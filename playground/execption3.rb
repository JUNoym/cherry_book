def method_1
  puts "method_1 startしました"
  begin
    method_2
  rescue => exception
    puts "エラークラス: #{exception.class}"
    puts "エラーメッセージ: #{exception.message}"
    puts "バックトレース -----"
    puts exception.backtrace
    puts "-----"
  end
end

def method_2
  puts "method_2 startしました"
  method_3
  puts "method_2 endしました"
end

def method_3
  puts "method_3 startしました"
  1 + "10" # ここで例外が発生する
  puts "method_3 endしました"
end


method_1()
