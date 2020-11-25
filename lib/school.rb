class School

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if roster[grade]
        roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
        hash_new = {}
        roster.each do |grade, name|
            hash_new[grade] = name.sort
        end
        hash_new
    end

end

