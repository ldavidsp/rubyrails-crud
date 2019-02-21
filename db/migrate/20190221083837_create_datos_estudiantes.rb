class CreateDatosEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :datos_estudiantes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :carrera
      t.string :carnet

      t.timestamps
    end
  end
end
