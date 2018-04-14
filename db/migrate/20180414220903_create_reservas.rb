class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.references :usuario, foreign_key: true
      t.references :empresa, foreign_key: true
      t.references :evento, foreign_key: true
      t.references :eventoinstancia, foreign_key: true
      t.integer :precio
      t.integer :cantidadpersonas
      t.string :codigo

      t.timestamps
    end
  end
end
