json.extract! datos_estudiante, :id, :nombres, :apellidos, :carrera, :carnet, :created_at, :updated_at
json.url datos_estudiante_url(datos_estudiante, format: :json)
