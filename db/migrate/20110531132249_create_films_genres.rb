class CreateFilmsGenres < ActiveRecord::Migration
  def self.up
    create_table :films_genres, :id=>false do |t|
      t.integer :film_id
      t.integer :genre_id
    end
  end

  def self.down
   drop_table :films_genres
  end
end
