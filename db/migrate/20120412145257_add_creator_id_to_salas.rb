class AddCreatorIdToSalas < ActiveRecord::Migration
  def change
    add_column :salas, :creator_id, :integer

  end
end
