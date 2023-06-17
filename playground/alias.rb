class User
  def hello
    puts "Hello!"
  end

  # undef hello # helloメソッドを削除する 

  alias 別名 hello

end

user = User.new
user.別名
