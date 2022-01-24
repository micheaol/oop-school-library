class Person  
  attr_writer :id
  attr_accessor :name, :age

  def initialize(age, _name = 'Unknown', _parent_permission: true)
    @id = Random.rand(10...100)
    @name = name
    @age = age
  end

  def can_use_services?
    if @age >= 18 || @parent_permission == true
      true
    else
      false
    end
  end

  def say_age
    print @age
  end

  private

  def is_of_age?
    @age >= 18
  end
end

class Student < Person
  def initialize(classroom, age, _name = 'Unknown', _parent_permission: true)
    super(age, _name = 'Unknown', _parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

class Teacher < Person
  def initialize(specialization, age, _name = 'Unknown', _parent_permission: true)
    super(age, _name = 'Unknown', _parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher = Teacher.new(25, 'class')
student = Student.new('Jenny', 18)
puts student.can_use_services?
puts teacher.can_use_services?
