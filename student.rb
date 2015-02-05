class Student
  def initialize(options)
   @name = options[:name]
  end
  
  # Public #questions
  # Get the questions asked by this student.
  #
  # Returns: Array - Rows froms questions table for this student.
  def questions
    
  end
  
  
  def self.all
    
  end
  
  def save
    #   INSERT INTO students (name) VALUES (1, 'Andrew');
    DATABASE.execute("INSERT INTO students (name) VALUES ('#{@name}')")
    #   need to have string interpolation in quotes 
  end
  
end