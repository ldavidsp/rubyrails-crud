class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :carrera
      t.string :carnet
      t.date :nacimiento
      t.integer :telefono

      t.timestamps
    end
  end
end
