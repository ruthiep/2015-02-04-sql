require 'minitest/autorun'

require 'sqlite3'

DATABASE = SQLite3::Database.new("cadejo_test.db")
require_relative "database_setup.rb"

require_relative 'student'
#require_relative 'question'

class StudentTest < Minitest::Test
  
  def test_student_creation
    student = Student.new({name: "Ruthie"})
    results = DATABASE.execute("SELECT name FROM students WHERE id = #{student.id}") 
    
    assert_equal(1, results.length)
  end

  def setup
    student = Student.new({name: "Jason"})
  end

  def test_simple_thing
    assert_equal(1, 1)
  end
  
  # def test_student_has_no_questions  #should return empty array.
#     #student = Student.new({name: "Jason"})  ##this moves to setup
#     assert_equal([], @student.questions)
#   end
#
#   def test_student_has_questions
#     #student = Student.new({name: "Usman"})
#     Question.new({student_id: @student_id, question_text: "Hi blah"})
#     Question.new({student_id: @student_id, question_text: "How's it"})
#     #need to create method to get that info...  attr reader
#     assert_equal(2, @student.questions.length)
#   end
  
  
end