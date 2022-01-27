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
            user_choice
        end

        def user_choice
            puts " "
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
            case options
            when '1'
            list_books
            when '2'
            list_people
            when '3'
            create_person
            when '4'
            create_book
            when '5'
            create_rental
            when '6'
            list_rental_by_person_id
            else
            exit_app
            end
        end

        def list_books
            @books.each {|book| puts "Title: #{book.title}, Author: #{book.author}"}
            # user_choice
            puts "book list"
        end

        def list_people
            @people.each { |person| puts "[#{person.class}] Name: #{person.name}, Age: #{person.age}"}
            puts "people list"
            # user_choice
        end

        def create_person
            puts "Do you want to create a student(1) or a teacher(2)?"
            input = gets.chomp
            case input
            when '1'
                create_student
            when '2'
                create_teacher
            else
                exit_app
            end
        end

        def create_student
            print "Age: "
            age = gets.chomp.to_i
            print "Name: "
            name = gets.chomp
            print "Has parent permission? [Y/N]: "
            has_permission = gets.chomp.downcase == 'y'

            student = Student.new(classroom: @classroom, age: age, name: name, parent_permission: has_permission )
            @people << student

            puts "Student created successfully"
            puts
            user_choice

        end

        def create_teacher
            print "Name: "
            name = gets.chomp
            print "Specialization: "
            specialization = gets.chomp
            print "Age: "
            age = gets.chomp

            teacher = Teacher.new(age: age, name: name, specialization: @specialization)
            @people << teacher
            puts "Teacher created successfully"

            puts
            user_choice
        end

        def create_book
            print "Title: "
            title = gets.chomp
            print "Author: "
            author = gets.chomp

            book = Book.new(title, author)
            @books << book

            puts "Book created successfully!"
            user_choice
        end

        def create_rental
            puts "Rentals created successfully!"
            user_choice
        end 
        def exit_app
            puts "You exit from the APP."
            puts "Thank you for using OOP APP."
        end
end