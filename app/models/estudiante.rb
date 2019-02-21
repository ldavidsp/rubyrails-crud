class Estudiante < ApplicationRecord
  validates_numericality_of :telefono
end
