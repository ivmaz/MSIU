class CreateFilmsCountries < ActiveRecord::Migration
  def self.up
    create_table :countries_films,:id=>false do |t|
      t.integer :film_id
      t.integer :country_id
    end
  end

  def self.down
	drop_table :countries_films
  end
end
