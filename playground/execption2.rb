# puts "Startしました"
# begin
#   puts 1 + "10"
# rescue
#   puts "例外が発生しました、しかし続行します！"
# end
# puts "Endしました"

def method_1
  puts "method_1 startしました"
  begin
    method_2
  rescue => exception
    puts "例外がmethod_3で発生したが、rescueをしてなかったのでここまで戻ってくる"
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

method_1
