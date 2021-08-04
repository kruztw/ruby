require 'base64'


class My_class
    def initialize(arg1)
        @var1 = arg1
        attr_accessor :var2     # 自動設定 var2 的 getter 和 setter
    end

    def say()
        puts "@var1 = #{@var1}"
    end

    def var1=(new_var1)         # setter: 定義這個才能 obj.var1 = xxx
        @var1 = new_var1
    end

    def var1                    # getter: 定義這個才能在外部存取 var1, 或是 def self.var1
        @var1
    end
end



def func1(input)
    output = 
        case input
        when 'a'
            "A"
        when 'b'
            "B"
        else
            "what?"
        end
    puts "func1: #{output}"
    puts
end

def main
    puts %(Input something:)
    input = gets.chomp                      # gets(sep="$/"), seperation 可以自行定義, .chomp 是避免讀入換行 https://stackoverflow.com/questions/6432524/why-does-rubys-gets-includes-the-closing-newline
    obj = My_class.new(input)
    obj.say
    obj.var1 = "var1"
    puts Base64.encode64 obj.var1

    func1 input
end

main
