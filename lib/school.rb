require 'pry'
class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        # working with hashes
        # ||=  >>>> just means a || a = b (|| means or)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, student|
            sorted[grade]= student.sort
        end 
        sorted
    end


    



end

binding.pry
0
