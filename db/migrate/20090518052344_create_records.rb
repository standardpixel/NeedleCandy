class CreateRecords < ActiveRecord::Migration
  def self.up
    create_table :records do |t|
      t.string :name
      t.integer :artist_id
      t.integer :speed_id
      t.boolean :multiple_units
      t.string :catalog_number

      t.timestamps
    end
  end

  def self.down
    drop_table :records
  end
end
