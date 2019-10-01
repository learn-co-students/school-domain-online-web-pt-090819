class School 
  attr_accessor :name, :roster
 
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student,level)
    roster[level] ||= []
    roster[level] << student
  end
  def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end
  def sort 
  new_hash = {}
  roster.each do |x, y| 
    new_hash[x] = y.sort 
  end 
  new_hash
end 
end 
school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster