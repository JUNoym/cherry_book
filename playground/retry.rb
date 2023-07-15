def method_1
  retry_count = 0
  begin
    puts "method_1 startしました"
    1 / 0
  rescue => exception
    retry_count += 1
    if retry_count <= 3
      puts "エラークラス: #{exception.class}"
      puts "retryします(#{retry_count}回目)"
      retry
    else
      puts "retryに失敗しました"
    end
  end
end

method_1()
