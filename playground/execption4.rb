def method_1
  puts "method_1 startしました"
  begin
    # "foo".no_mehtod
    1 / 0
  rescue  NoMethodError => exception
    puts "エラークラス: #{exception.class}"
    puts "NomehtodErrorが発生しました"
  rescue ZeroDivisionError => exception
    puts "エラークラス: #{exception.class}"
    puts "ZeroDivisionErrorが発生しました"
  end
  puts "method_1 でエラーが発生してるけどmethod2を実行する"
  method_2
end

def method_2
  puts "method_2 startしました"
  puts "method_2 endしました"
end
method_1()



