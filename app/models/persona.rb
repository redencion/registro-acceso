class Persona < ApplicationRecord
  self.table_name = 'Persona'
  validates :nombre, :apellido, :cedula, :credencial,  presence: {message: "\t EL campo es requerido"}
  validates :cedula, :credencial, uniqueness: {message: "\t¡El dato ya existe!"}

  belongs_to :organizacion

  def buscarPersona
    personas = Persona.all
    personas = personas.where([" nombre LIKE ?", "%#{nombre}%"]) if nombre.present?
    personas = personas.where([" apellido LIKE ?", "%#{apellido}%"]) if apellido.present?
    personas = personas.where([" cedula LIKE ?", cedula]) if cedula.present?
    personas = personas.where([" credencial LIKE ?", credencial]) if credencial.present?

    return personas
  end
end
