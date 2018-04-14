class CreateOrganizadors < ActiveRecord::Migration[5.0]
  def change
    create_table :organizadors do |t|
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.references :empresa, foreign_key: true
      t.references :evento, foreign_key: true
      t.string :email
      t.string :telefono
      t.text :descripcion
      t.string :estadoinicialeventos

      t.timestamps
    end
  end
end
