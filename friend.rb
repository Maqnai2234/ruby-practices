class Friend
    @@my_name = "Fred"
    def initialize(name, gender, phone)
        @name, @sex, @phone = name, gender, phone
    end

    def hello
        puts "Hi, I'am #{@name}"
    end

    def self.our_common_friend
        puts "Were are all friends #{@@my_name}"
    end
end

f1 = Friend.new("Susan", "female", "555-21232")
f2 = Friend.new("Tom", "male", "567-21232")

f1.hello
f2.hello

Friend.our_common_friend