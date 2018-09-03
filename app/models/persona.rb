class Persona < ApplicationRecord
  self.table_name = 'Persona'
  validates :nombre, :apellido, :cedula, :credencial,  presence: {message: "\t EL campo es requerido"}
  validates :cedula, :credencial, uniqueness: {message: "\t¡El dato ya existe!"}

  belongs_to :organizacion
end
