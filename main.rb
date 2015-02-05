require 'pry'

#Empower prowm with SQLite
require 'sqlite3'

#load/create our database for this program.
DATABASE = SQLite3::Database.new("cadejo.db")

#get results as a hash, instead of an Array. Better readability.
DATABASE.results_as_hash = true

#DATABASE.execute("DROP TABLE students")
#DATABASE.execute("CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT)")
require_relative 'student'

binding.pry
