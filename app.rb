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

    def run
        puts "Welcome to OOP school APP :)"
        puts " "
        user_choice
    end

    def user_choice
        puts "Please choose an option by entering a number: "
        puts "1 - List of books"
        puts "2 - List of People"
        puts "3 - Create a person"
        puts "4 - Create a book"
        puts "5 - Create a rental"
        puts "6 - List all rentals for a given person id"
        puts "7 - Exit"
        user_selection = gets.chomp
        selected_choice user_selection
    end
    def selected_choice(options)
        case(options)
        when '1'
            list_books
        when '2'
            list_people
        when '3'
            create_person
        else
            puts "Exit"
        end
        end
    end

    def list_books
        @books.each do |book| puts "Title: #{book.title}, Author: #{book.author}"
        user_choice
    end

    def list_people
        @people.each do |person| puts "[#{person.classroom}] Name: #{person.name}, Age: #{person.age}"
        user_choice
    end

    def create_person
        puts "Do you want to create a student(1) or a teacher(2)?"
        user_choice
    end
    
end
end