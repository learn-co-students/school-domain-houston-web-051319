require 'pry'

class School

    def initialize(name)
        @name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name,grade)
        if self.roster[grade] == nil
            self.roster[grade] = []
        end
        self.roster[grade] << name
    end

    def grade(grade_needed)
        self.roster[grade_needed]
    end

    def sort
        self.roster.each do |grade,students|
            students.sort!
        end
        self.roster
    end

end