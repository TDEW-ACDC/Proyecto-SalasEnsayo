class CreateInstrumentosSalas < ActiveRecord::Migration
  def change
  	create_table :instrumentos_salas do |t|
      t.integer :instrumento_id
      t.integer :sala_id
    end
  end
end
