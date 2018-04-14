class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.text :descripcion
      t.references :empresa, foreign_key: true
      t.integer :precio
      t.date :fechafinal
      t.string :estadoinstancia

      t.timestamps
    end
  end
end
