json.extract! usuario, :id, :persona_id, :nombre, :password_digest, :fecha_registro, :estatus, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
