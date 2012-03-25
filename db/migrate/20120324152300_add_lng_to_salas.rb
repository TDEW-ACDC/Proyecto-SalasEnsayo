class AddLngToSalas < ActiveRecord::Migration
  def change
    add_column :salas, :lng, :string

  end
end
