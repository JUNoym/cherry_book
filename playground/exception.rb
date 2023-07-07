# puts "start"
# puts 1 + "10"
# puts "end"

puts "start"

begin
  puts 1 + "10"
  # beginの中にはエラーが発生しうる処理を書く
rescue => exception
  puts "例外が発生したが、このまま続行する"
  puts "実際のエラ-内容 → #{exception.message}"
# rescueの中には例外が発生した場合の処理を書く
end

puts "end"
