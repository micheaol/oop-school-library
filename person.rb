require './corrector'

class Person
  attr_writer :id
  attr_accessor :name, :age

  def initialize(age, _name: 'Unknown', _parent_permission: true)
    @id = Random.rand(10...100)
    @name = name
    @age = age
    @check_name = Corrector.new
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end

  def validate_name
    @name = check_name.correct_name(@name)
  end
  def say_age
    print @age
  end

  private

  def of_age?
    @age >= 18
  end
end
