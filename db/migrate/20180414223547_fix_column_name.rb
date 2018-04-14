class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :eventoinstancia, :cocinero_id, :organizador_id
  end
end
