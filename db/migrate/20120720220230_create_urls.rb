class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long
      t.string :short
      t.integer :clicks, :default=>0, :null=>false
      t.timestamps
    end
  end
end
