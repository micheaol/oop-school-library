require './person.rb'
class Teacher < Person
    def initialize(specialization, age, _name: 'Unknown', _parent_permission: true)
      super(age, _name: 'Unknown', _parent_permission: true)
      @specialization = specialization
    end
  
    def can_use_services?
      true
    end
  end

  teacher = Teacher.new("Math", 25)
  puts teacher.can_use_services?