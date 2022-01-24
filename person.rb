class Person
    attr_writer: id
    attr_accessor: name
    attr_accessor: age
    
    def intitialize (name="Unknown", age, parent_permission=true)
        @id = Random.rand(10...100)
        @name = name
        @age = age
    end

    def can_use_services?
        if @age >= 18 || @parent_permission == true
            return true
        end
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