require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    # ...
  end

  def self.finalize!
  end

  def self.table_name=(table_name)
    # ...
  end

  def self.table_name
    # ...
  end

  def self.all
    data =  DBConnection.execute(<<-SQL)
     SELECT
       *
     FROM
       #{table_name}
   SQL
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    result = DBConnection.execute(<<-SQL, id)
      SELECT *
      FROM #{table_name}
      WHERE id = ?
    SQL
    return nil if result.empty?
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update

   columns = self.class.columns[1..-1]
   col_names = columns.join(",")

   question_marks = []
   columns.length.times {question_marks << "?"}
   question_marks = question_marks.join(",")

   id = self.id
   vals = attribute_values[1..-1]

   table_name = self.class.table_name


   ####Finally, update the database#####
   DBConnection.execute(<<-SQL,*vals)
     UPDATE
       #{table_name}
     SET
       (#{col_names}) = (#{question_marks})
     WHERE
       id = #{id}
   SQL
  end

  def save
    # ...
  end
end
