class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :nick
      t.string :name
      t.string :location
      t.string :image
      t.timestamps
    end
  end
end
