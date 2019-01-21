class Student

  attr_reader :student_name, :student_cohort
  attr_writer :student_name, :student_cohort

def initialize(input_student_name, input_student_cohort)
  @student_name = input_student_name
  @student_cohort = input_student_cohort
end

def set_name(new_name)
  @student_name = new_name
end

def set_cohort(new_cohort)
  @student_cohort = new_cohort
end

def talk
  return "I can talk"
end

def student_language(language)
  return @person = "I love #{language}" 
end





end
