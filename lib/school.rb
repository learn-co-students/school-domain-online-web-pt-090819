require 'pry'
class School
  attr_accessor :roster
  
  def initialize(name)
      @name = name 
      @roster = {}
end
 
 def add_student(student_name,grade)
     #check to see if the key exists in the hash 
     #push the student inside the existing 
     #we can push the student inside the array
    # if roster[grade]
    #       roster[grade] << student_name
    #   else 
    #     roster[grade] = []
    #     roster[grade] << student_name
    # end
    
    if !roster[grade]
        roster[grade] = []
    roster[grade] << student_name
    end