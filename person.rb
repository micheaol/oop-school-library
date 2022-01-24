class Person
    attr_writer :id
    attr_accessor :name
    attr_accessor :age
    
    def initialize (age, name = "Unknown", parent_permission = true)
        @id = Random.rand(10...100)
        @name = name
        @age = age
    end

    def can_use_services?
        if @age >= 18 || @parent_permission == true
            return true
        else
            return false
        end
    end

    def say_age
        print @age
    end

    private
    def is_of_age?
        if @age >= 18
            return true
        else
            return false
        end
    end
end

class Student < Person
    def initialize(classroom, age, name = "Unknown", parent_permission = true)
        super(age, name = "Unknown", parent_permission = true)
        @classroom = classroom
    end
    
    def play_hooky
        return "¯\(ツ)/¯"
    end
end

student = Student.new(25, "class");
puts student