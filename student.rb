require './person'

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name = 'Unknown', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom(classroom)
    @classroom = classroom
    classroom.student << self unless classroom.student.include?(self)
  end
end
