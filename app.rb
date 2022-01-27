require_relative 'book'
require_relative 'classroom'
require_relative 'person'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'

class App
    attr_accessor :people, :books

    def initialize
        @people = []
        @books = []
        @rentals = []
    end
    def create_person
        student = Student.new("Test", 23)
        student
    end
  

    
    def run
        puts "Welcome to OOP school APP :)"
    end
end