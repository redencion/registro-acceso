class Usuario < ApplicationRecord
  belongs_to :persona
  # Información de la entidad
  self.table_name = 'Usuario'



end
