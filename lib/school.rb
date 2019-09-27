class School
attr_accessor :roster
#attr_reader IS STATIC, READ-ONLY
#attr_writer IS WRITABLE

  def initialize(name)
  @school = name
  @roster = {}
  end
 
  def add_student(name, grade)
  if roster[grade]
  roster[grade] << name
  else
  roster[grade] = []
  roster[grade] << name
  #roster[grade].flatten
  end
  end
  
  def grade(num)
roster[num]
  end

  def sort
roster.each do |grade, name|
roster[grade] = name.flatten.sort
end
  end

end

school = School.new("Bayside High School")
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student(["Screech", "Hello"], 11)
school.add_student(["Avi Flombaum", "Jeff Baird"], 10)
school.grade(10)
school.sort