class CreateReservas < ActiveRecord::Migration[5.1]
  def change
    create_table :reservas do |t|
      t.string :Nombre
      t.text :descripcion
      t.string :image_url
      t.decimal :precio, precision: 8, scale: 2

      t.timestamps
    end
  end
end
