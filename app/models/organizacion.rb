class Organizacion < ApplicationRecord
  self.table_name = 'Organizacion'
  validates :nombre, presence: {message: "¡Es un campo requerido!"}
  validates :nombre, uniqueness: {message: "¡Ya se encuetra registrado!"}
end
