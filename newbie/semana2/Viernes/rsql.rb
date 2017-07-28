require 'sqlite3'

class Chef


  def initialize(first_name, last_name, birthday, email, phone, created_at, updated_at)
    @first_name = first_name
    @last_name = last_name
    @birthday = birthday
    @email = email
    @phone = phone
    @created_at = created_at
    @updated_at = updated_at
  end

def save
  Chef.db.execute(
    <<-SQL
INSERT INTO chefs (first_name, last_name, birthday, email, phone, created_at, updated_at) VALUES("#{@first_name}", "#{@last_name}", "#{@birthday}", "#{@email}", "#{@phone}", "#{@created_at}", "#{@updated_at}");
);
SQL
)

end
  def self.all
    Chef.db.execute(
      <<-SQL
    SELECT * from chefs;
  );
SQL
)
end



def self.where(atributo,valor)
  Chef.db.execute(
    <<-SQL
  SELECT * from chefs where "#{atributo}" = "#{valor}";
);
SQL
)
end

def self.delete(atributo,valor)
  Chef.db.execute(
    <<-SQL
  DELETE from chefs where "#{atributo}"= "#{valor}";
);
SQL
)
end



  def self.create_table
    Chef.db.execute(
      <<-SQL
        CREATE TABLE chefs (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          birthday DATE NOT NULL,
          email VARCHAR(64) NOT NULL,
          phone VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed
    Chef.db.execute(
      <<-SQL
        INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          ('Ferran', 'Adriá', '1985-02-09', 'ferran.adria@elbulli.com', '42381093238', DATETIME('now'), DATETIME('now')),
          ('Cesar', 'Garcia', '1993-02-05', 'cesar.garcia@gmail.com', '55201213453', DATETIME('now'), DATETIME('now')),
          ('Alfredo', 'Shavo', '1979-01-12', 'Alfredo.shavo@gmail.com', '55201211234', DATETIME('now'), DATETIME('now')),
          ('Adrian', 'Weno', '1990-05-09', 'adrian.weno@gmail.com', '55201215678', DATETIME('now'), DATETIME('now')),
          ('Pepe', 'Gomez', '2000-04-07', 'gomez.pp@gmail.com', '55201219112', DATETIME('now'), DATETIME('now'));
        -- Añade aquí más registros
      SQL
    )
  end


  private

  def self.db
    @@db ||= SQLite3::Database.new("chefs.db")
  end

end
