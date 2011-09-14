class CreateFilmsPosts < ActiveRecord::Migration
  def self.up
    create_table :films_posts,:id=>false do |t|
      t.integer :film_id
      t.integer :post_id
    end
  end

  def self.down
	drop_table :films_posts
  end
end
