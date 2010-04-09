class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :title
      t.string :name
      t.integer :phone
      t.string :email
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
