class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.integer :person_id
      t.integer :post_id
      t.integer :film_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
