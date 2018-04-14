class CreateEventoinstancia < ActiveRecord::Migration[5.0]
  def change
    create_table :eventoinstancia do |t|
      t.references :evento, foreign_key: true
      t.date :fecha
      t.time :hora
      t.string :ciudad
      t.string :zona
      t.integer :precioinstancia
      t.references :cocinero, foreign_key: true
      t.integer :cupominimo
      t.integer :cupomaximo
      t.string :estadoinstancia
      t.string :estadorazon

      t.timestamps
    end
  end
end
