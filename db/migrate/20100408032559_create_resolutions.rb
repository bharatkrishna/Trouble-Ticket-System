class CreateResolutions < ActiveRecord::Migration
  def self.up
    create_table :resolutions do |t|
      t.string :resolvedby
      t.integer :phone
      t.string :email
      t.text :body
      t.string :slevel
      t.references :ticket

      t.timestamps
    end
  end

  def self.down
    drop_table :resolutions
  end
end
