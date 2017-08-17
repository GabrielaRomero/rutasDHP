class CreateGuia < ActiveRecord::Migration[5.1]
  def change
    create_table :guia do |t|
      t.string :folio
      t.string :nombre
      t.string :apellidos
      t.date :fecha_nacimiento
      t.boolean :disponible
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
