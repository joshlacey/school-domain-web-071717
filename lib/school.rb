require 'pry'

class School

  attr_accessor
  attr_reader :school





  def initialize(school)
    @school = school
    @roster = Hash.new{|hash, key| hash[key] = []}
  end

  def add_student(name, grade)
    #@roster[grade] ||= [] <<< use this if no @roster Hash.new{....etc....}
    @roster[grade] << name
    @grade = grade
  end

  def grade(grade)
    @roster[grade]
  end

  def roster
    @roster
  end

  def sort
    new_hash = Hash.new{|hash, key| hash[key] = []}
    @roster.each do |key, value|
      new_hash[key] = value.sort   ## value.sort! works if you want to changed the original's value.
    end
    new_hash
  end

end

school = School.new("Flatiron")

#binding.pry
"k"
