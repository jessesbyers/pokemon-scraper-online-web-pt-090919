class Pokemon
  attr_accessor :id, :name, :type, :db
<<<<<<< HEAD

  def initialize(id = nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
    SQL

    db.execute(sql, name, type)

    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end

  def self.find(id, db)
      sql = <<-SQL
        SELECT *
        FROM pokemon
        WHERE id = ?
      SQL
      row = db.execute(sql, id).flatten
      pokemon = self.new(id=nil)
      pokemon.id = row[0]
      pokemon.name = row[1]
      pokemon.type = row[2]
      pokemon
    end
  end
=======
  @@all = []

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.save(pk_name, pk_type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type, db)
      VALUES (?, ?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.type, self.db)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]
  end

  def self.all
    @@all
  end


end
>>>>>>> f127463bd9f4b5234704a7a27dea2e9ac4c1c51d
