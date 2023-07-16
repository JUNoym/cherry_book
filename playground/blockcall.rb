def receive_block(&block)
  res = block.call("hoge")
  puts res
end

receive_block do |text|
  puts text * 30
end



