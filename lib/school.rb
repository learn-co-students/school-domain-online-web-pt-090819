require 'pry'
class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if !roster[grade]
      roster[grade] = []
end
roster[grade] << student_name
end


def grade(grade)
  roster[grade]
  
end

def sort 
  roster.each do |grade, names|
    roster[grade] = roster[grade].sort
  end
end

end
  