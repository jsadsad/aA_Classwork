require 'singleton'
require 'sqlite3'

class QuestionsDatabase < SQLite3::QuestionsDatabase
  
  include Singleton

  def initialize
    super('questions.db')
    self.type_translation = true
    self.results_as_hash = true
  end


  # SQLite3::Database.new( "data.db" ) do |db|
  #   db.execute( "select * from table" ) do |row|
  #     p row
  #   end
  # end

  
#   def initialize
#     #remember that you first have to create the database
#     super('plays.db') 
#     self.type_translation = true
#     self.results_as_hash = true #this returns the results from the database as a hash
#     #if you dont do this line then you'll return a 2d array from the database
#   end
# end


end