class User
    attr_accessor :first_name, :last_name, :age

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
        puts "Userクラスのインスタンスが作られました"
    end

    def full_name_and_puts_age
        "#{first_name} #{last_name}です。#{age}歳です。"
    end
end



users = []
users << User.new("Alice", "Ruby", 20)
users << User.new("大山", "Python", 30)

users[0].first_name = "JUNYA"

users.each do |user|
    puts "氏名: #{user.full_name_and_puts_age}"
end