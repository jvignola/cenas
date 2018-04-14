class CreatePersonasreservas < ActiveRecord::Migration[5.0]
  def change
    create_table :personasreservas do |t|
      t.references :reserva, foreign_key: true
      t.string :email
      t.string :telefono
      t.string :celular
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2

      t.timestamps
    end
  end
end
