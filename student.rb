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
end
