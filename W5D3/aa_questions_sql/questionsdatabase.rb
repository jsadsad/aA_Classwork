require 'singleton'
require 'sqlite3'

class QuestionsDatabase < SQLite3::QuestionsDatabase
  
  include Singleton

  SQLite3::Database.new( "data.db" ) do |db|
    db.execute( "select * from table" ) do |row|
      p row
    end
  end


end