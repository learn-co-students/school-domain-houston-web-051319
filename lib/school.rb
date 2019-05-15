class School

    x = 0
    y = 5

    
    def initialize (name)
        @name = name
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student (student_name, grade)
        @roster[grade] ||= []
       @roster[grade] << student_name
    end
    def grade (grade)
        @roster[grade]
    end
    def sort
        sorted = {}
        roster.each do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end
end