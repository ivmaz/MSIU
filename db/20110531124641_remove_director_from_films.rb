class RemoveDirectorFromFilms < ActiveRecord::Migration
  def self.up
    remove_column :films, :director
  end

  def self.down
    
  end
end
