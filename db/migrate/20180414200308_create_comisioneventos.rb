class CreateComisioneventos < ActiveRecord::Migration[5.0]
  def change
    create_table :comisioneventos do |t|
      t.references :evento, foreign_key: true
      t.date :vigencia
      t.string :tipo
      t.integer :valor

      t.timestamps
    end
  end
end
