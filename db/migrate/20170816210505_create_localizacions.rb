class CreateLocalizacions < ActiveRecord::Migration[5.1]
  def change
    create_table :localizacions do |t|
      t.float :latitud
      t.float :longitud
      t.string :direccion
      t.text :descripcion
      t.string :titulo

      t.timestamps
    end
  end
end
