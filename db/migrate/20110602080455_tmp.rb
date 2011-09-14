class Tmp < ActiveRecord::Migration
  def self.up
    remove_column :films, :genre_id
  end

  def self.down
  end
end
