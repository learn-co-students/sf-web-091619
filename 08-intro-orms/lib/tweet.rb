class Tweet
  attr_accessor :message, :username
  attr_reader :id
  @@tweets = []

  def self.all
    @@tweets
  end

  def initialize(props={})
    @message = props['message']
    @username = props['username']
    save
    set_instance_id
    @@tweets << self
  end

  def save
    sql = <<-SQL
      INSERT INTO tweets (message, username) VALUES (?, ?)
    SQL

    DB[:conn].execute(sql, @message, @username)
  end

  def set_instance_id
    sql = <<-SQL
      SELECT id FROM tweets
      ORDER BY id DESC
      LIMIT 1
    SQL

    results = DB[:conn].execute(sql)
    
    @id = results[0]['id']
  end
end