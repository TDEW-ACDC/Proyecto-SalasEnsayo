class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :costo

      t.timestamps
    end
  end
end
