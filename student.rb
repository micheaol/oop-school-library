# frozen_string_literal: true

require './person'

class Student < Person
  def initialize(classroom, age, _name: 'Unknown', _parent_permission: true)
    super(age, _name: 'Unknown', _parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
student = Student.new('Hey', 10)
puts student.can_use_services?
