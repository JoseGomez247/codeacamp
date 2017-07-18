class Course

  def initialize(name)
    @course_name  = name
    @students   = []
  end

  def course_name
    @course_name
  end

  def course_name=(new_name)
    @course_name = new_name
  end

  def add_student(student)
    @students << student
  end

  def students
    @students
  end
end


class Student

  @@id = 0

  def initialize(name, last_name, campus)
    @name     = name
    @last_name = last_name
    @campus = campus
    @id       = new_id
  end

  def new_id
    @@id += 1
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def last_name
    @last_name
  end

  def last_name=(new_last_name)
    @last_name = new_last_name
  end

  def campus
    @campus
  end

  def campus=(new_campus)
    @campus = new_campus
  end

  def id
    @id
  end
