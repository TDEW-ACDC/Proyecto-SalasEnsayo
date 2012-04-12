class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :sala_id
      t.integer :user_id

      t.timestamps
    end
  end
end
