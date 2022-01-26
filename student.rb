require './person'

class Student < Person
  belongs_to :classroom
  def initialize(classroom, age, _name: 'Unknown', _parent_permission: true)
    super(age, _name: 'Unknown', _parent_permission: true)
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
