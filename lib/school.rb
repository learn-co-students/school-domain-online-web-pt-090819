require 'pry'# code here!
class School

  attr_accessor :roster
  attr_reader :name


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= [] # a || a = b
  #  if @roster[grade] == nil
    #@roster[grade] = []
    #else @roster[grade] << name
    @roster[grade] << name

  end

  def grade(students)
    @roster[students]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end

end
