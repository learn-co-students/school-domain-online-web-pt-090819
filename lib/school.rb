require 'pry'
class School
  attr_accessor :name
  attr_reader :roster, :add_student
  
  def initialize(name)
    @name = name
    @roster ={}
  end 
  
  def add_student(student_name, grade)
    @roster[grade] = [] unless @roster.key?(grade)
    @roster[grade] << student_name
  end 
  
  def grade(grade_level)
    return @roster[grade_level]
  end 
  
  def sort
    roster.each do |grade, student|
      roster[grade] = student.sort
    end
  end 
  
end 