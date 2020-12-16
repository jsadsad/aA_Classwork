# == Schema Information
#
# Table name: nobels
#
#  yr          :integer
#  subject     :string
#  winner      :string

require_relative './sqlzoo.rb'

# why does method require OFFSET 1 
# why did it return an extra duplicate date
# or why did we require distinct 
#is there a duplicate in the file. 
def physics_no_chemistry
  # In which years was the Physics prize awarded, 
  #but no Chemistry prize?
  execute(<<-SQL)
  SELECT
    DISTINCT yr
  FROM
    nobels
  WHERE
    subject = 'Physics' AND yr NOT IN (
      SELECT
         yr
      FROM
        nobels
      WHERE
        subject = 'Chemistry'  
    )
  SQL
end   
