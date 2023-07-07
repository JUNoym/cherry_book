module Helloable
  def hello
    puts "Hello!"
  end
  module_function :hello
end

Helloable.hello

class User
  include Helloable
  def call_hello_module_function
    hello
  end
end

user = User.new
user.call_hello_module_function

# module_functionで指定したメソッドは自動的にprivateメソッドになるので、そのまま呼び出してもエラーになる


