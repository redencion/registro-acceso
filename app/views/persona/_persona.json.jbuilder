json.extract! persona, :id, :organizacion_id, :cedula, :nombre, :apellido, :credencial, :fecha_registro, :estatus, :created_at, :updated_at
json.url persona_url(persona, format: :json)
