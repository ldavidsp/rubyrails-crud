class DatosEstudiante < ApplicationRecord

  validates_presence_of :nombres, :apellidos, :carnet, :carrera, presence: true
  validates_format_of :nombres, :apellidos, :carnet, :carrera, :with => /\A[a-zA-Z]+\z/

end
