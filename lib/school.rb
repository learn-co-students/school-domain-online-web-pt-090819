# require 'pry'

class School
  attr_accessor :roster
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
  
    if !roster[grade]
      roster[grade] = []
    end
    roster[grade] << student_name

    
#    if roster[grade]
#      roster[grade] << student_name
#    else
#      roster[grade] = []
#      roster[grade] << student_name
#    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each do |grade,student|
      roster[grade] = student.sort
    end
    roster
  end
  
  
end