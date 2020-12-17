class Questions < QuestionsDatabase
  attr_accessor :id, :body, :user_id
  def self.all
    data = QuestionsDatabase.instance.execute("SELECT * FROM questions") #we must do .instance because
    #   #PlayDBConnection is a singleton. .execute is the command that allows us to run 
    #   # a query call to the database
    data.map { |datam| Questions.new(datam)}
  end

  def initialize(options)
    @id = options['id']
    @title = options['title']
    @body = options['body']
    @user_id = options['user_id']
  end

  def find_by_id

  end

  # find_by_id
end 

# def self.all
#   data = PlayDBConnection.instance.execute("SELECT * FROM plays") #we must do .instance because
#   #PlayDBConnection is a singleton. .execute is the command that allows us to run 
#   # a query call to the database

#   #data will return a hash within an array
#   #thats why we have to map of the array.
#   #for every hash in the array, we are creating an new instance of Play
#   data.map { |datum| Play.new(datum) }
# end

# def create
#   raise "#{self} already in database" if self.id
#   #this is an example of a heredoc 
#   PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
#     INSERT INTO
#       plays (title, year, playwright_id)
#     VALUES
#       (?, ?, ?)
#   SQL
#   self.id = PlayDBConnection.instance.last_insert_row_id
# end

# def update
#   raise "#{self} not in database" unless self.id
#   PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id, self.id)
#     UPDATE
#       plays
#     SET
#       title = ?, year = ?, playwright_id = ?
#     WHERE
#       id = ?
#   SQL
# end
# end