class AddLatToSalas < ActiveRecord::Migration
  def change
    add_column :salas, :lat, :string

  end
end
